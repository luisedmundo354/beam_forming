################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/STWIN/STWIN.c \
../Drivers/BSP/STWIN/STWIN_audio.c \
../Drivers/BSP/STWIN/STWIN_bc.c \
../Drivers/BSP/STWIN/STWIN_bus.c \
../Drivers/BSP/STWIN/STWIN_debug_pins.c \
../Drivers/BSP/STWIN/STWIN_env_sensors.c \
../Drivers/BSP/STWIN/STWIN_env_sensors_ex.c \
../Drivers/BSP/STWIN/STWIN_motion_sensors.c \
../Drivers/BSP/STWIN/STWIN_motion_sensors_ex.c \
../Drivers/BSP/STWIN/STWIN_sd.c \
../Drivers/BSP/STWIN/STWIN_wifi.c \
../Drivers/BSP/STWIN/hci_tl_interface_template.c 

OBJS += \
./Drivers/BSP/STWIN/STWIN.o \
./Drivers/BSP/STWIN/STWIN_audio.o \
./Drivers/BSP/STWIN/STWIN_bc.o \
./Drivers/BSP/STWIN/STWIN_bus.o \
./Drivers/BSP/STWIN/STWIN_debug_pins.o \
./Drivers/BSP/STWIN/STWIN_env_sensors.o \
./Drivers/BSP/STWIN/STWIN_env_sensors_ex.o \
./Drivers/BSP/STWIN/STWIN_motion_sensors.o \
./Drivers/BSP/STWIN/STWIN_motion_sensors_ex.o \
./Drivers/BSP/STWIN/STWIN_sd.o \
./Drivers/BSP/STWIN/STWIN_wifi.o \
./Drivers/BSP/STWIN/hci_tl_interface_template.o 

C_DEPS += \
./Drivers/BSP/STWIN/STWIN.d \
./Drivers/BSP/STWIN/STWIN_audio.d \
./Drivers/BSP/STWIN/STWIN_bc.d \
./Drivers/BSP/STWIN/STWIN_bus.d \
./Drivers/BSP/STWIN/STWIN_debug_pins.d \
./Drivers/BSP/STWIN/STWIN_env_sensors.d \
./Drivers/BSP/STWIN/STWIN_env_sensors_ex.d \
./Drivers/BSP/STWIN/STWIN_motion_sensors.d \
./Drivers/BSP/STWIN/STWIN_motion_sensors_ex.d \
./Drivers/BSP/STWIN/STWIN_sd.d \
./Drivers/BSP/STWIN/STWIN_wifi.d \
./Drivers/BSP/STWIN/hci_tl_interface_template.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STWIN/%.o Drivers/BSP/STWIN/%.su Drivers/BSP/STWIN/%.cyclo: ../Drivers/BSP/STWIN/%.c Drivers/BSP/STWIN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STWIN

clean-Drivers-2f-BSP-2f-STWIN:
	-$(RM) ./Drivers/BSP/STWIN/STWIN.cyclo ./Drivers/BSP/STWIN/STWIN.d ./Drivers/BSP/STWIN/STWIN.o ./Drivers/BSP/STWIN/STWIN.su ./Drivers/BSP/STWIN/STWIN_audio.cyclo ./Drivers/BSP/STWIN/STWIN_audio.d ./Drivers/BSP/STWIN/STWIN_audio.o ./Drivers/BSP/STWIN/STWIN_audio.su ./Drivers/BSP/STWIN/STWIN_bc.cyclo ./Drivers/BSP/STWIN/STWIN_bc.d ./Drivers/BSP/STWIN/STWIN_bc.o ./Drivers/BSP/STWIN/STWIN_bc.su ./Drivers/BSP/STWIN/STWIN_bus.cyclo ./Drivers/BSP/STWIN/STWIN_bus.d ./Drivers/BSP/STWIN/STWIN_bus.o ./Drivers/BSP/STWIN/STWIN_bus.su ./Drivers/BSP/STWIN/STWIN_debug_pins.cyclo ./Drivers/BSP/STWIN/STWIN_debug_pins.d ./Drivers/BSP/STWIN/STWIN_debug_pins.o ./Drivers/BSP/STWIN/STWIN_debug_pins.su ./Drivers/BSP/STWIN/STWIN_env_sensors.cyclo ./Drivers/BSP/STWIN/STWIN_env_sensors.d ./Drivers/BSP/STWIN/STWIN_env_sensors.o ./Drivers/BSP/STWIN/STWIN_env_sensors.su ./Drivers/BSP/STWIN/STWIN_env_sensors_ex.cyclo ./Drivers/BSP/STWIN/STWIN_env_sensors_ex.d ./Drivers/BSP/STWIN/STWIN_env_sensors_ex.o ./Drivers/BSP/STWIN/STWIN_env_sensors_ex.su ./Drivers/BSP/STWIN/STWIN_motion_sensors.cyclo ./Drivers/BSP/STWIN/STWIN_motion_sensors.d ./Drivers/BSP/STWIN/STWIN_motion_sensors.o ./Drivers/BSP/STWIN/STWIN_motion_sensors.su ./Drivers/BSP/STWIN/STWIN_motion_sensors_ex.cyclo ./Drivers/BSP/STWIN/STWIN_motion_sensors_ex.d ./Drivers/BSP/STWIN/STWIN_motion_sensors_ex.o ./Drivers/BSP/STWIN/STWIN_motion_sensors_ex.su ./Drivers/BSP/STWIN/STWIN_sd.cyclo ./Drivers/BSP/STWIN/STWIN_sd.d ./Drivers/BSP/STWIN/STWIN_sd.o ./Drivers/BSP/STWIN/STWIN_sd.su ./Drivers/BSP/STWIN/STWIN_wifi.cyclo ./Drivers/BSP/STWIN/STWIN_wifi.d ./Drivers/BSP/STWIN/STWIN_wifi.o ./Drivers/BSP/STWIN/STWIN_wifi.su ./Drivers/BSP/STWIN/hci_tl_interface_template.cyclo ./Drivers/BSP/STWIN/hci_tl_interface_template.d ./Drivers/BSP/STWIN/hci_tl_interface_template.o ./Drivers/BSP/STWIN/hci_tl_interface_template.su

.PHONY: clean-Drivers-2f-BSP-2f-STWIN

