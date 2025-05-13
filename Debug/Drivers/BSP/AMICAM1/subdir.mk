################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/AMICAM1/amicam1_audio.c 

OBJS += \
./Drivers/BSP/AMICAM1/amicam1_audio.o 

C_DEPS += \
./Drivers/BSP/AMICAM1/amicam1_audio.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/AMICAM1/%.o Drivers/BSP/AMICAM1/%.su Drivers/BSP/AMICAM1/%.cyclo: ../Drivers/BSP/AMICAM1/%.c Drivers/BSP/AMICAM1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-AMICAM1

clean-Drivers-2f-BSP-2f-AMICAM1:
	-$(RM) ./Drivers/BSP/AMICAM1/amicam1_audio.cyclo ./Drivers/BSP/AMICAM1/amicam1_audio.d ./Drivers/BSP/AMICAM1/amicam1_audio.o ./Drivers/BSP/AMICAM1/amicam1_audio.su

.PHONY: clean-Drivers-2f-BSP-2f-AMICAM1

