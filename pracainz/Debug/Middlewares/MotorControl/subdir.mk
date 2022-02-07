################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/bus_voltage_sensor.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/circle_limitation.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/digital_output.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/mcp.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/mcpa.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/motor_power_measurement.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/ntc_temperature_sensor.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/open_loop.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/pid_regulator.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/pqd_motor_power_measurement.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/pwm_common.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Src/r3_1_f4xx_pwm_curr_fdbk.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/r_divider_bus_voltage_sensor.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/ramp_ext_mngr.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/speed_pos_fdbk.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/speed_torq_ctrl.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/state_machine.c \
C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/virtual_speed_sensor.c 

OBJS += \
./Middlewares/MotorControl/bus_voltage_sensor.o \
./Middlewares/MotorControl/circle_limitation.o \
./Middlewares/MotorControl/digital_output.o \
./Middlewares/MotorControl/mcp.o \
./Middlewares/MotorControl/mcpa.o \
./Middlewares/MotorControl/motor_power_measurement.o \
./Middlewares/MotorControl/ntc_temperature_sensor.o \
./Middlewares/MotorControl/open_loop.o \
./Middlewares/MotorControl/pid_regulator.o \
./Middlewares/MotorControl/pqd_motor_power_measurement.o \
./Middlewares/MotorControl/pwm_common.o \
./Middlewares/MotorControl/r3_1_f4xx_pwm_curr_fdbk.o \
./Middlewares/MotorControl/r_divider_bus_voltage_sensor.o \
./Middlewares/MotorControl/ramp_ext_mngr.o \
./Middlewares/MotorControl/speed_pos_fdbk.o \
./Middlewares/MotorControl/speed_torq_ctrl.o \
./Middlewares/MotorControl/state_machine.o \
./Middlewares/MotorControl/virtual_speed_sensor.o 

C_DEPS += \
./Middlewares/MotorControl/bus_voltage_sensor.d \
./Middlewares/MotorControl/circle_limitation.d \
./Middlewares/MotorControl/digital_output.d \
./Middlewares/MotorControl/mcp.d \
./Middlewares/MotorControl/mcpa.d \
./Middlewares/MotorControl/motor_power_measurement.d \
./Middlewares/MotorControl/ntc_temperature_sensor.d \
./Middlewares/MotorControl/open_loop.d \
./Middlewares/MotorControl/pid_regulator.d \
./Middlewares/MotorControl/pqd_motor_power_measurement.d \
./Middlewares/MotorControl/pwm_common.d \
./Middlewares/MotorControl/r3_1_f4xx_pwm_curr_fdbk.d \
./Middlewares/MotorControl/r_divider_bus_voltage_sensor.d \
./Middlewares/MotorControl/ramp_ext_mngr.d \
./Middlewares/MotorControl/speed_pos_fdbk.d \
./Middlewares/MotorControl/speed_torq_ctrl.d \
./Middlewares/MotorControl/state_machine.d \
./Middlewares/MotorControl/virtual_speed_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/MotorControl/bus_voltage_sensor.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/bus_voltage_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/circle_limitation.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/circle_limitation.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/digital_output.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/digital_output.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/mcp.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/mcp.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/mcpa.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/mcpa.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/motor_power_measurement.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/motor_power_measurement.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/ntc_temperature_sensor.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/ntc_temperature_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/open_loop.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/open_loop.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/pid_regulator.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/pid_regulator.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/pqd_motor_power_measurement.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/pqd_motor_power_measurement.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/pwm_common.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/pwm_common.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/r3_1_f4xx_pwm_curr_fdbk.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Src/r3_1_f4xx_pwm_curr_fdbk.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/r_divider_bus_voltage_sensor.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/r_divider_bus_voltage_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/ramp_ext_mngr.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/ramp_ext_mngr.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/speed_pos_fdbk.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/speed_pos_fdbk.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/speed_torq_ctrl.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/speed_torq_ctrl.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/state_machine.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/state_machine.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/MotorControl/virtual_speed_sensor.o: C:/Users/kompik/Desktop/elo/MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Src/virtual_speed_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-MotorControl

clean-Middlewares-2f-MotorControl:
	-$(RM) ./Middlewares/MotorControl/bus_voltage_sensor.d ./Middlewares/MotorControl/bus_voltage_sensor.o ./Middlewares/MotorControl/circle_limitation.d ./Middlewares/MotorControl/circle_limitation.o ./Middlewares/MotorControl/digital_output.d ./Middlewares/MotorControl/digital_output.o ./Middlewares/MotorControl/mcp.d ./Middlewares/MotorControl/mcp.o ./Middlewares/MotorControl/mcpa.d ./Middlewares/MotorControl/mcpa.o ./Middlewares/MotorControl/motor_power_measurement.d ./Middlewares/MotorControl/motor_power_measurement.o ./Middlewares/MotorControl/ntc_temperature_sensor.d ./Middlewares/MotorControl/ntc_temperature_sensor.o ./Middlewares/MotorControl/open_loop.d ./Middlewares/MotorControl/open_loop.o ./Middlewares/MotorControl/pid_regulator.d ./Middlewares/MotorControl/pid_regulator.o ./Middlewares/MotorControl/pqd_motor_power_measurement.d ./Middlewares/MotorControl/pqd_motor_power_measurement.o ./Middlewares/MotorControl/pwm_common.d ./Middlewares/MotorControl/pwm_common.o ./Middlewares/MotorControl/r3_1_f4xx_pwm_curr_fdbk.d ./Middlewares/MotorControl/r3_1_f4xx_pwm_curr_fdbk.o ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.d ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.o ./Middlewares/MotorControl/ramp_ext_mngr.d ./Middlewares/MotorControl/ramp_ext_mngr.o ./Middlewares/MotorControl/speed_pos_fdbk.d ./Middlewares/MotorControl/speed_pos_fdbk.o ./Middlewares/MotorControl/speed_torq_ctrl.d ./Middlewares/MotorControl/speed_torq_ctrl.o ./Middlewares/MotorControl/state_machine.d ./Middlewares/MotorControl/state_machine.o ./Middlewares/MotorControl/virtual_speed_sensor.d ./Middlewares/MotorControl/virtual_speed_sensor.o

.PHONY: clean-Middlewares-2f-MotorControl

