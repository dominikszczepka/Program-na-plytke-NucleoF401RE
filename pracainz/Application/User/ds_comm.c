/*
 * ds_comm.c
 *
 *  Created on: 21 gru 2021
 *      Author: Dominik Szczepka
 */
#include "main.h"
#include "ds_comm.h"
#include "mc_configuration_registers.h"
#include "pqd_motor_power_measurement.h"

#include <string.h>
#include <stdio.h>
#include <math.h>


void Ds_Init(struct Ds_MotorInfo *Motor)
{
	HAL_UART_Receive_IT(&huart2, Motor->buffer, 6);
	MC_ProgramSpeedRampMotor1(3000 / 6, 1000);
	Motor->zadanawartosc=3000;
	Motor->kierunek = 1;
	Motor->stan = Idle;
}

void Ds_ObslugaKomunikacji(struct Ds_MotorInfo *Motor)
{
	BusVoltageSensor_Handle_t *pHandle;
	const MotorConfig_reg_t *MotorConfig = *MotorConfig_reg;
	uint8_t motorID;
	MCI_Handle_t *pMCI = &Mci[motorID];
	PID_Handle_t *pPIDSpeed[NBR_OF_MOTORS] = { &PIDSpeedHandle_M1 };

	Motor->Rshunt = MotorConfig->rs;

	if (Motor->stan == Monitor)
	{
		Motor->speed = MC_GetMecSpeedAverageMotor1() * 6;
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "SPEED:%dRPM",
				Motor->speed);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
		Motor->current = (MC_GetPhaseCurrentAmplitudeMotor1() * 3.3)
				/ (65536 * Motor->Rshunt * 5.18);
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "CURRENT:%.4fAMP",
				Motor->current);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
		Motor->voltage = (float) (((float) VBS_GetAvBusVoltage_V(
				pHandle->AvBusVoltage_d)
				* (float) MC_GetPhaseVoltageAmplitudeMotor1())
				/ (sqrt(3) * 32768));
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "VOLTAGE:%.2fVLT",
				Motor->voltage);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "VALUE:%dSET",
				Motor->zadanawartosc);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
		Motor->temperature = NTC_GetAvTemp_C(pTemperatureSensor[motorID]);
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "TEMP:%dCEL",
				Motor->temperature);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
	}

	else if (Motor->stan == PIValues)
	{
		Motor->KP_licz = PID_GetKP(pPIDSpeed[motorID]);
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "KPL:%dPLICZ",
				Motor->KP_licz);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
		Motor->KP_mian = PID_GetKPDivisor(pPIDSpeed[motorID]);
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "KPM:%dPMIAN",
				Motor->KP_mian);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
		Motor->KI_licz = PID_GetKI(pPIDSpeed[motorID]);
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "KIL:%dILICZ",
				Motor->KI_licz);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
		Motor->KI_mian = PID_GetKIDivisor(pPIDSpeed[motorID]);
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "KIM:%dIMIAN",
				Motor->KI_mian);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
		HAL_Delay(10);
	}
	else if (Motor->stan == Graph)
	{
		Motor->speed = MC_GetMecSpeedAverageMotor1() * 6;
		Motor->dl_kom = sprintf((char*) Motor->komunikat, "SPEED:%dRPM",
				Motor->speed);
		HAL_UART_Transmit_IT(&huart2, Motor->komunikat, Motor->dl_kom);
	}
}

void Ds_Interrupt(struct Ds_MotorInfo *Motor)
{
	char pom;

	if (Motor->buffer[0] == 's' && Motor->stan != Graph)
	{
		Motor->zadanawartosc = 0;
		pom = (char) Motor->buffer[1];
		Motor->zadanawartosc += (pom - '0') * 10000;
		pom = (char) Motor->buffer[2];
		Motor->zadanawartosc += (pom - '0') * 1000;
		pom = (char) Motor->buffer[3];
		Motor->zadanawartosc += (pom - '0') * 100;
		pom = (char) Motor->buffer[4];
		Motor->zadanawartosc += (pom - '0') * 10;
		pom = (char) Motor->buffer[5];
		Motor->zadanawartosc += (pom - '0');
		Motor->zadanawartosc = Motor->zadanawartosc * Motor->kierunek;
		MC_ProgramSpeedRampMotor1(Motor->zadanawartosc / 6, 1000);
	}
	else if (Motor->buffer[0] == 'e')
	{
		MC_StartMotor1();
	}
	else if (Motor->buffer[0] == 'd' && !(Motor->buffer[1] == 'e'))
	{
		MC_StopMotor1();

	}
	else if (Motor->buffer[0] == 'k')
	{

		if (Motor->buffer[1] == '1')
		{
			if (Motor->speed < 0)
				MC_StopMotor1();
			Motor->kierunek = 1;
		}
		if (Motor->buffer[1] == '0')
		{
			if (Motor->speed > 0)
				MC_StopMotor1();
			Motor->kierunek = -1;
		}

	}

	else if (Motor->buffer[0] == 'p')
	{
		if (Motor->speed != 0)
			MC_StopMotor1();
		Motor->wartosc_KP = 0;
		pom = (char) Motor->buffer[1];
		Motor->wartosc_KP += (pom - '0') * 10000;
		pom = (char) Motor->buffer[2];
		Motor->wartosc_KP += (pom - '0') * 1000;
		pom = (char) Motor->buffer[3];
		Motor->wartosc_KP += (pom - '0') * 100;
		pom = (char) Motor->buffer[4];
		Motor->wartosc_KP += (pom - '0') * 10;
		pom = (char) Motor->buffer[5];
		Motor->wartosc_KP += (pom - '0') * 1;

	}
	else if (Motor->buffer[0] == 'i')
	{
		if (Motor->speed != 0)
			MC_StopMotor1();
		Motor->wartosc_KI = 0;
		pom = (char) Motor->buffer[1];
		Motor->wartosc_KI += (pom - '0') * 10000;
		pom = (char) Motor->buffer[2];
		Motor->wartosc_KI += (pom - '0') * 1000;
		pom = (char) Motor->buffer[3];
		Motor->wartosc_KI += (pom - '0') * 100;
		pom = (char) Motor->buffer[4];
		Motor->wartosc_KI += (pom - '0') * 10;
		pom = (char) Motor->buffer[5];
		Motor->wartosc_KI += (pom - '0') * 1;
	}

	else if (Motor->buffer[0] == 'c')
	{
		if (Motor->speed != 0)
			MC_StopMotor1();
		uint8_t motorID;
		MCI_Handle_t *pMCI = &Mci[motorID];
		PID_Handle_t *pPIDSpeed[NBR_OF_MOTORS] = { &PIDSpeedHandle_M1 };
		PID_SetKP(pPIDSpeed[motorID], Motor->wartosc_KP);
		PID_SetKI(pPIDSpeed[motorID], Motor->wartosc_KI);
	}

	else if (Motor->buffer[0] == 'f')
	{
		if (Motor->speed != 0)
			MC_StopMotor1();
		uint8_t motorID;
		MCI_Handle_t *pMCI = &Mci[motorID];
		PID_Handle_t *pPIDSpeed[NBR_OF_MOTORS] = { &PIDSpeedHandle_M1 };
		PID_SetKP(pPIDSpeed[motorID], PID_GetDefaultKP(pPIDSpeed[motorID]));
		PID_SetKI(pPIDSpeed[motorID], PID_GetDefaultKI(pPIDSpeed[motorID]));
	}
	else if (Motor->buffer[0] == 'g')
	{
		Motor->stan = 3;
	}
	else if (Motor->buffer[0] == 'm')
	{
		Motor->stan = 1;
	}

	else if (Motor->buffer[0] == 'v')
	{
		Motor->stan = 2;
	}
	else if (Motor->buffer[0] == 't' && Motor->stan == Graph)
	{
		Motor->czas = 0;
		pom = (char) Motor->buffer[1];
		Motor->czas += (pom - '0') * 10000;
		pom = (char) Motor->buffer[2];
		Motor->czas += (pom - '0') * 1000;
		pom = (char) Motor->buffer[3];
		Motor->czas += (pom - '0') * 100;
		pom = (char) Motor->buffer[4];
		Motor->czas += (pom - '0') * 10;
		pom = (char) Motor->buffer[5];
		Motor->czas += (pom - '0');
	}

	if (Motor->buffer[0] == 's' && Motor->stan == Graph)
	{
		Motor->zadanawartosc = 0;
		pom = (char) Motor->buffer[1];
		Motor->zadanawartosc += (pom - '0') * 10000;
		pom = (char) Motor->buffer[2];
		Motor->zadanawartosc += (pom - '0') * 1000;
		pom = (char) Motor->buffer[3];
		Motor->zadanawartosc += (pom - '0') * 100;
		pom = (char) Motor->buffer[4];
		Motor->zadanawartosc += (pom - '0') * 10;
		pom = (char) Motor->buffer[5];
		Motor->zadanawartosc += (pom - '0');
		Motor->zadanawartosc = Motor->zadanawartosc * Motor->kierunek;
		MC_ProgramSpeedRampMotor1(Motor->zadanawartosc / 6, Motor->czas);
	}

	HAL_UART_Receive_IT(&huart2, Motor->buffer, 6);

}

