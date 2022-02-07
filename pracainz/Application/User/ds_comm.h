/*
 * ds_comm.h
 *
 *  Created on: 21 gru 2021
 *      Author: Dominik Szczepka
 */

#ifndef APPLICATION_USER_DS_COMM_H_
#define APPLICATION_USER_DS_COMM_H_

UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
struct Ds_MotorInfo
{
	uint8_t znak, buffer[6], komunikat[30];
	uint16_t dl_kom, KP_licz, KI_licz;
	int16_t speed, speed_set, temperature, KP_mian, KI_mian;
	float wartosc_KP, wartosc_KI;
	int zadanawartosc, czas, kierunek;
	int16_t pom1, pom2;
	float current, Rshunt;
	float voltage;
	enum Stan
	{
		Idle, Monitor, PIValues, Graph
	} stan;
};

void Ds_Init(struct Ds_MotorInfo *Motor);
// przykład użycia Ds_Init(&Motor);
void Ds_ObslugaKomunikacji(struct Ds_MotorInfo *Motor);
// przykład użycia w pętli while mikrokontrolera Ds_ObslugaKomunikacji(&Motor);
void Ds_Interrupt(struct Ds_MotorInfo *Motor);
// przykład użycia w obsłudze przerwania Ds_Interrupt(&Motor);
#endif /* APPLICATION_USER_DS_COMM_H_ */

