################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/lpadc_temperature_measurement.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/lpadc_temperature_measurement.d \
./source/semihost_hardfault.d 

OBJS += \
./source/lpadc_temperature_measurement.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MCXN947VDF -DCPU_MCXN947VDF_cm33 -DCPU_MCXN947VDF_cm33_core0 -DMCUXPRESSO_SDK -DPRINTF_ADVANCED_ENABLE=1 -DPRINTF_FLOAT_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DMCXN947_cm33_core0_SERIES -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\source" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\drivers" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\CMSIS" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\CMSIS\m-profile" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\device" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\device\periph" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\utilities" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\utilities\str" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\utilities\debug_console_lite" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\component\uart" -I"C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\board" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\source\mcux_config.h" -imacros "C:\Users\me\Documents\MCUXpressoIDE_25.6.136\test\frdmmcxn947_lpadc_temperature_measurement_cm33_core0\source\mcuxsdk_version.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/lpadc_temperature_measurement.d ./source/lpadc_temperature_measurement.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source

