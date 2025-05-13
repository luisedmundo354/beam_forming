################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/CCA02M2/cca02m2_audio.c 

OBJS += \
./Drivers/BSP/CCA02M2/cca02m2_audio.o 

C_DEPS += \
./Drivers/BSP/CCA02M2/cca02m2_audio.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/CCA02M2/%.o Drivers/BSP/CCA02M2/%.su Drivers/BSP/CCA02M2/%.cyclo: ../Drivers/BSP/CCA02M2/%.c Drivers/BSP/CCA02M2/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_Audio/Addons/HP_PDM/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Drivers/BSP/CCA02M2" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Drivers/BSP/STM32L4xx_Nucleo" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Drivers/BSP/Components/Common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-CCA02M2

clean-Drivers-2f-BSP-2f-CCA02M2:
	-$(RM) ./Drivers/BSP/CCA02M2/cca02m2_audio.cyclo ./Drivers/BSP/CCA02M2/cca02m2_audio.d ./Drivers/BSP/CCA02M2/cca02m2_audio.o ./Drivers/BSP/CCA02M2/cca02m2_audio.su

.PHONY: clean-Drivers-2f-BSP-2f-CCA02M2

