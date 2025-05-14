################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsismodule.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/fftinit.c 

OBJS += \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsismodule.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/fftinit.o 

C_DEPS += \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsismodule.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/fftinit.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/%.o Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/%.su Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/%.cyclo: ../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/%.c Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_STM32L4XX_NUCLEO -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_Audio/Addons/HP_PDM/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Drivers/BSP/CCA02M2" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Drivers/BSP/STM32L4xx_Nucleo" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Drivers/BSP/Components/Common" -I"/home/lbrenap/STM32CubeIDE/workspace_1.18.0/beam_forming/Drivers/CMSIS/DSP/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src

clean-Drivers-2f-CMSIS-2f-DSP-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src:
	-$(RM) ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsismodule.cyclo ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsismodule.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsismodule.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsismodule.su ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/fftinit.cyclo ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/fftinit.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/fftinit.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/fftinit.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src

