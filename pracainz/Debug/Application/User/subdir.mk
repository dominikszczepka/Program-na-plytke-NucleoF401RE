################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/kompik/Desktop/elo/Src/aspep.c \
../Application/User/ds_comm.c \
C:/Users/kompik/Desktop/elo/Src/main.c \
C:/Users/kompik/Desktop/elo/Src/mc_api.c \
C:/Users/kompik/Desktop/elo/Src/mc_config.c \
C:/Users/kompik/Desktop/elo/Src/mc_configuration_registers.c \
C:/Users/kompik/Desktop/elo/Src/mc_interface.c \
C:/Users/kompik/Desktop/elo/Src/mc_math.c \
C:/Users/kompik/Desktop/elo/Src/mc_parameters.c \
C:/Users/kompik/Desktop/elo/Src/mc_tasks.c \
C:/Users/kompik/Desktop/elo/Src/mcp_config.c \
C:/Users/kompik/Desktop/elo/Src/motorcontrol.c \
C:/Users/kompik/Desktop/elo/Src/pwm_curr_fdbk.c \
C:/Users/kompik/Desktop/elo/Src/register_interface.c \
C:/Users/kompik/Desktop/elo/Src/regular_conversion_manager.c \
C:/Users/kompik/Desktop/elo/Src/stm32f4xx_hal_msp.c \
C:/Users/kompik/Desktop/elo/Src/stm32f4xx_it.c \
C:/Users/kompik/Desktop/elo/Src/stm32f4xx_mc_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c \
C:/Users/kompik/Desktop/elo/Src/usart_aspep_driver.c 

OBJS += \
./Application/User/aspep.o \
./Application/User/ds_comm.o \
./Application/User/main.o \
./Application/User/mc_api.o \
./Application/User/mc_config.o \
./Application/User/mc_configuration_registers.o \
./Application/User/mc_interface.o \
./Application/User/mc_math.o \
./Application/User/mc_parameters.o \
./Application/User/mc_tasks.o \
./Application/User/mcp_config.o \
./Application/User/motorcontrol.o \
./Application/User/pwm_curr_fdbk.o \
./Application/User/register_interface.o \
./Application/User/regular_conversion_manager.o \
./Application/User/stm32f4xx_hal_msp.o \
./Application/User/stm32f4xx_it.o \
./Application/User/stm32f4xx_mc_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o \
./Application/User/usart_aspep_driver.o 

C_DEPS += \
./Application/User/aspep.d \
./Application/User/ds_comm.d \
./Application/User/main.d \
./Application/User/mc_api.d \
./Application/User/mc_config.d \
./Application/User/mc_configuration_registers.d \
./Application/User/mc_interface.d \
./Application/User/mc_math.d \
./Application/User/mc_parameters.d \
./Application/User/mc_tasks.d \
./Application/User/mcp_config.d \
./Application/User/motorcontrol.d \
./Application/User/pwm_curr_fdbk.d \
./Application/User/register_interface.d \
./Application/User/regular_conversion_manager.d \
./Application/User/stm32f4xx_hal_msp.d \
./Application/User/stm32f4xx_it.d \
./Application/User/stm32f4xx_mc_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d \
./Application/User/usart_aspep_driver.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/aspep.o: C:/Users/kompik/Desktop/elo/Src/aspep.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/%.o: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/main.o: C:/Users/kompik/Desktop/elo/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_api.o: C:/Users/kompik/Desktop/elo/Src/mc_api.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_config.o: C:/Users/kompik/Desktop/elo/Src/mc_config.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_configuration_registers.o: C:/Users/kompik/Desktop/elo/Src/mc_configuration_registers.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_interface.o: C:/Users/kompik/Desktop/elo/Src/mc_interface.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_math.o: C:/Users/kompik/Desktop/elo/Src/mc_math.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_parameters.o: C:/Users/kompik/Desktop/elo/Src/mc_parameters.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_tasks.o: C:/Users/kompik/Desktop/elo/Src/mc_tasks.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mcp_config.o: C:/Users/kompik/Desktop/elo/Src/mcp_config.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/motorcontrol.o: C:/Users/kompik/Desktop/elo/Src/motorcontrol.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/pwm_curr_fdbk.o: C:/Users/kompik/Desktop/elo/Src/pwm_curr_fdbk.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/register_interface.o: C:/Users/kompik/Desktop/elo/Src/register_interface.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/regular_conversion_manager.o: C:/Users/kompik/Desktop/elo/Src/regular_conversion_manager.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32f4xx_hal_msp.o: C:/Users/kompik/Desktop/elo/Src/stm32f4xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32f4xx_it.o: C:/Users/kompik/Desktop/elo/Src/stm32f4xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32f4xx_mc_it.o: C:/Users/kompik/Desktop/elo/Src/stm32f4xx_mc_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/usart_aspep_driver.o: C:/Users/kompik/Desktop/elo/Src/usart_aspep_driver.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/kompik/Desktop/elo/STM32CubeIDE/Application/User" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/aspep.d ./Application/User/aspep.o ./Application/User/ds_comm.d ./Application/User/ds_comm.o ./Application/User/main.d ./Application/User/main.o ./Application/User/mc_api.d ./Application/User/mc_api.o ./Application/User/mc_config.d ./Application/User/mc_config.o ./Application/User/mc_configuration_registers.d ./Application/User/mc_configuration_registers.o ./Application/User/mc_interface.d ./Application/User/mc_interface.o ./Application/User/mc_math.d ./Application/User/mc_math.o ./Application/User/mc_parameters.d ./Application/User/mc_parameters.o ./Application/User/mc_tasks.d ./Application/User/mc_tasks.o ./Application/User/mcp_config.d ./Application/User/mcp_config.o ./Application/User/motorcontrol.d ./Application/User/motorcontrol.o ./Application/User/pwm_curr_fdbk.d ./Application/User/pwm_curr_fdbk.o ./Application/User/register_interface.d ./Application/User/register_interface.o ./Application/User/regular_conversion_manager.d ./Application/User/regular_conversion_manager.o ./Application/User/stm32f4xx_hal_msp.d ./Application/User/stm32f4xx_hal_msp.o ./Application/User/stm32f4xx_it.d ./Application/User/stm32f4xx_it.o ./Application/User/stm32f4xx_mc_it.d ./Application/User/stm32f4xx_mc_it.o ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/sysmem.d ./Application/User/sysmem.o ./Application/User/usart_aspep_driver.d ./Application/User/usart_aspep_driver.o

.PHONY: clean-Application-2f-User

