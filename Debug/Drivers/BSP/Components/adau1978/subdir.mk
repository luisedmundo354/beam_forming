################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/adau1978/adau1978.c \
../Drivers/BSP/Components/adau1978/adau1978_reg.c 

OBJS += \
./Drivers/BSP/Components/adau1978/adau1978.o \
./Drivers/BSP/Components/adau1978/adau1978_reg.o 

C_DEPS += \
./Drivers/BSP/Components/adau1978/adau1978.d \
./Drivers/BSP/Components/adau1978/adau1978_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/adau1978/%.o Drivers/BSP/Components/adau1978/%.su Drivers/BSP/Components/adau1978/%.cyclo: ../Drivers/BSP/Components/adau1978/%.c Drivers/BSP/Components/adau1978/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components-2f-adau1978

clean-Drivers-2f-BSP-2f-Components-2f-adau1978:
	-$(RM) ./Drivers/BSP/Components/adau1978/adau1978.cyclo ./Drivers/BSP/Components/adau1978/adau1978.d ./Drivers/BSP/Components/adau1978/adau1978.o ./Drivers/BSP/Components/adau1978/adau1978.su ./Drivers/BSP/Components/adau1978/adau1978_reg.cyclo ./Drivers/BSP/Components/adau1978/adau1978_reg.d ./Drivers/BSP/Components/adau1978/adau1978_reg.o ./Drivers/BSP/Components/adau1978/adau1978_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-adau1978

