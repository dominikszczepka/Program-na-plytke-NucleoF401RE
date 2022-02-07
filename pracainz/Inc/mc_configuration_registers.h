
#ifndef MC_CONFIGURATION_REGISTERS_H
#define MC_CONFIGURATION_REGISTERS_H

#include "stdint.h"
#include "mcp_config.h"

typedef struct
{
  uint32_t SDKVersion;
  uint8_t  MotorNumber;
  uint8_t  MCP_Flag;
  uint8_t  MCPA_UARTA_LOG;
  uint8_t  MCPA_UARTB_LOG;
  uint8_t  MCPA_STLNK_LOG;
  uint8_t  Padding;
} __attribute__ ((packed)) GlobalConfig_reg_t;

typedef struct _motorParams_t_
{
    float		polePairs;
    float		ratedFlux;
    float		rs;
    float		rsSkinFactor;
    float		ls;
    float   ld;
    float		maxCurrent;
    float		mass_copper_kg;
    float		cooling_tau_s;
    char  name[24];
} __attribute__ ((packed)) MotorConfig_reg_t;

typedef  struct
{
  uint32_t maxMechanicalSpeed;
  uint32_t maxMotorCurrent;
  uint16_t maxVoltageSupply;
  uint16_t minVoltageSupply;
  uint8_t driveType;
  uint8_t padding;
} __attribute__ ((packed)) ApplicationConfig_reg_t;

typedef struct
{
  uint8_t primarySensor;
  uint8_t auxiliarySensor;
  uint8_t topology;
  uint8_t FOCRate;
  uint32_t PWMFrequency;
  uint16_t MediumFrequency;
  uint16_t configurationFlag1;
} __attribute__ ((packed)) FOCFwConfig_reg_t;

typedef enum
{
  eNO_SENSOR = 0,
  ePLL  = 1,
  eCORDIC = 2,
  eENCODER = 3,
  eHALL = 4,
  eHSO = 5,
  eZEST = 6,
} sensorType_def;

#define SDK_VERSION_MAIN   (0x5) /*!< [31:24] main version */
#define SDK_VERSION_SUB1   (0x5a) /*!< [23:16] sub1 version */
#define SDK_VERSION_SUB2   (0x3) /*!< [15:8]  sub2 version */
#define SDK_VERSION_RC     (0x0) /*!< [7:0]  release candidate */
#define SDK_VERSION        ((SDK_VERSION_MAIN << 24U)\
                                         |(SDK_VERSION_SUB1 << 16U)\
                                         |(SDK_VERSION_SUB2 << 8U )\
                                         |(SDK_VERSION_RC))
/* configurationFlag1 definition */
#define FLUX_WEAKENING_FLAG 1
#define FEED_FORWARD_FLAG (1 << 1)
#define MTPA_FLAG (1 << 2)
#define PFC_FLAG (1 << 3)
#define ICL_FLAG (1 << 4)
#define RESISTIVE_BREAK_FLAG (1 << 5)
#define OCP_DISABLE_FLAG (1 << 6)
#define STGAP_FLAG (1 << 7)
#define POSITION_CTRL_FLAG (1 << 8)
#define VBUS_SENSING_FLAG (1 << 9)
#define TEMP_SENSING_FLAG (1 << 10)
#define VOLTAGE_SENSING_FLAG (1 << 11)
#define FLASH_CONFIG_FLAG (1 << 12)
#define DAC_CH1_FLAG (1 << 13)
#define DAC_CH2_FLAG (1 << 14)

/* configurationFlag2 definition */
#define ON_THE_FLY_FLAG 1
#define OVERMODULATION_FLAG (1 << 1)
#define DISCONTINUOUS_PWM_FLAG (2 << 1)

/* MCP_Flag definition */
#define MCP_OVER_STLINK  0
#define MCP_OVER_UARTA   (1<< 1)
#define MCP_OVER_UARTB   0

#define configurationFlag1_M1 (0|VBUS_SENSING_FLAG|TEMP_SENSING_FLAG)

#define NBR_OF_MOTORS  1
#define DRIVE_TYPE_M1  0
#define PRIM_SENSOR_M1  ePLL
#define AUX_SENSOR_M1  eNO_SENSOR
#define TOPOLOGY_M1 0
#define FOC_RATE_M1 1
#define PWM_FREQ_M1 30000

extern const char FIRMWARE_NAME[];
extern const char CTL_BOARD[];
extern const char* PWR_BOARD_NAME[NBR_OF_MOTORS];
extern const char* MOTOR_NAME[NBR_OF_MOTORS];
extern const GlobalConfig_reg_t globalConfig_reg;
extern const FOCFwConfig_reg_t* FOCConfig_reg[NBR_OF_MOTORS];
extern const MotorConfig_reg_t* MotorConfig_reg[NBR_OF_MOTORS];
extern const ApplicationConfig_reg_t* ApplicationConfig_reg[NBR_OF_MOTORS];

#endif
