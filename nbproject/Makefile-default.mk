#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c DIO_Interface.c mLEDs.c mButtons.c mRelay.c mBuzzer.c m7Segment.c mLCD8.c mLCD4.c EXT_INT.c mADC.c mTimer.c mUART.c mSPI.c m24CL40.c mTWI.c M24C16_TWI.c freertos/croutine.c freertos/event_groups.c freertos/heap_4.c freertos/list.c freertos/port.c freertos/queue.c freertos/stream_buffer.c freertos/tasks.c freertos/timers.c EEPROM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/DIO_Interface.o ${OBJECTDIR}/mLEDs.o ${OBJECTDIR}/mButtons.o ${OBJECTDIR}/mRelay.o ${OBJECTDIR}/mBuzzer.o ${OBJECTDIR}/m7Segment.o ${OBJECTDIR}/mLCD8.o ${OBJECTDIR}/mLCD4.o ${OBJECTDIR}/EXT_INT.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/mTimer.o ${OBJECTDIR}/mUART.o ${OBJECTDIR}/mSPI.o ${OBJECTDIR}/m24CL40.o ${OBJECTDIR}/mTWI.o ${OBJECTDIR}/M24C16_TWI.o ${OBJECTDIR}/freertos/croutine.o ${OBJECTDIR}/freertos/event_groups.o ${OBJECTDIR}/freertos/heap_4.o ${OBJECTDIR}/freertos/list.o ${OBJECTDIR}/freertos/port.o ${OBJECTDIR}/freertos/queue.o ${OBJECTDIR}/freertos/stream_buffer.o ${OBJECTDIR}/freertos/tasks.o ${OBJECTDIR}/freertos/timers.o ${OBJECTDIR}/EEPROM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/DIO_Interface.o.d ${OBJECTDIR}/mLEDs.o.d ${OBJECTDIR}/mButtons.o.d ${OBJECTDIR}/mRelay.o.d ${OBJECTDIR}/mBuzzer.o.d ${OBJECTDIR}/m7Segment.o.d ${OBJECTDIR}/mLCD8.o.d ${OBJECTDIR}/mLCD4.o.d ${OBJECTDIR}/EXT_INT.o.d ${OBJECTDIR}/mADC.o.d ${OBJECTDIR}/mTimer.o.d ${OBJECTDIR}/mUART.o.d ${OBJECTDIR}/mSPI.o.d ${OBJECTDIR}/m24CL40.o.d ${OBJECTDIR}/mTWI.o.d ${OBJECTDIR}/M24C16_TWI.o.d ${OBJECTDIR}/freertos/croutine.o.d ${OBJECTDIR}/freertos/event_groups.o.d ${OBJECTDIR}/freertos/heap_4.o.d ${OBJECTDIR}/freertos/list.o.d ${OBJECTDIR}/freertos/port.o.d ${OBJECTDIR}/freertos/queue.o.d ${OBJECTDIR}/freertos/stream_buffer.o.d ${OBJECTDIR}/freertos/tasks.o.d ${OBJECTDIR}/freertos/timers.o.d ${OBJECTDIR}/EEPROM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/DIO_Interface.o ${OBJECTDIR}/mLEDs.o ${OBJECTDIR}/mButtons.o ${OBJECTDIR}/mRelay.o ${OBJECTDIR}/mBuzzer.o ${OBJECTDIR}/m7Segment.o ${OBJECTDIR}/mLCD8.o ${OBJECTDIR}/mLCD4.o ${OBJECTDIR}/EXT_INT.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/mTimer.o ${OBJECTDIR}/mUART.o ${OBJECTDIR}/mSPI.o ${OBJECTDIR}/m24CL40.o ${OBJECTDIR}/mTWI.o ${OBJECTDIR}/M24C16_TWI.o ${OBJECTDIR}/freertos/croutine.o ${OBJECTDIR}/freertos/event_groups.o ${OBJECTDIR}/freertos/heap_4.o ${OBJECTDIR}/freertos/list.o ${OBJECTDIR}/freertos/port.o ${OBJECTDIR}/freertos/queue.o ${OBJECTDIR}/freertos/stream_buffer.o ${OBJECTDIR}/freertos/tasks.o ${OBJECTDIR}/freertos/timers.o ${OBJECTDIR}/EEPROM.o

# Source Files
SOURCEFILES=main.c DIO_Interface.c mLEDs.c mButtons.c mRelay.c mBuzzer.c m7Segment.c mLCD8.c mLCD4.c EXT_INT.c mADC.c mTimer.c mUART.c mSPI.c m24CL40.c mTWI.c M24C16_TWI.c freertos/croutine.c freertos/event_groups.c freertos/heap_4.c freertos/list.c freertos/port.c freertos/queue.c freertos/stream_buffer.c freertos/tasks.c freertos/timers.c EEPROM.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/9d7b4123ec16101658425d111f5b9f6d47c43ab3 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/DIO_Interface.o: DIO_Interface.c  .generated_files/flags/default/784d0b70374c2b9b1749a35ac5efbca88a46d339 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DIO_Interface.o.d 
	@${RM} ${OBJECTDIR}/DIO_Interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/DIO_Interface.o.d" -MT "${OBJECTDIR}/DIO_Interface.o.d" -MT ${OBJECTDIR}/DIO_Interface.o -o ${OBJECTDIR}/DIO_Interface.o DIO_Interface.c 
	
${OBJECTDIR}/mLEDs.o: mLEDs.c  .generated_files/flags/default/37bbe5a7868317765068a2741024d6775634272a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLEDs.o.d 
	@${RM} ${OBJECTDIR}/mLEDs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLEDs.o.d" -MT "${OBJECTDIR}/mLEDs.o.d" -MT ${OBJECTDIR}/mLEDs.o -o ${OBJECTDIR}/mLEDs.o mLEDs.c 
	
${OBJECTDIR}/mButtons.o: mButtons.c  .generated_files/flags/default/cfcd03cbba6f6d7ab2df72f52c12b627b3dc714e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mButtons.o.d 
	@${RM} ${OBJECTDIR}/mButtons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mButtons.o.d" -MT "${OBJECTDIR}/mButtons.o.d" -MT ${OBJECTDIR}/mButtons.o -o ${OBJECTDIR}/mButtons.o mButtons.c 
	
${OBJECTDIR}/mRelay.o: mRelay.c  .generated_files/flags/default/d92300d67c8e3a4675982453bcc65c0ac6b0403c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mRelay.o.d 
	@${RM} ${OBJECTDIR}/mRelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mRelay.o.d" -MT "${OBJECTDIR}/mRelay.o.d" -MT ${OBJECTDIR}/mRelay.o -o ${OBJECTDIR}/mRelay.o mRelay.c 
	
${OBJECTDIR}/mBuzzer.o: mBuzzer.c  .generated_files/flags/default/ebf89ff6ec5f988e32fb2580e95c2312f6adf8fd .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mBuzzer.o.d 
	@${RM} ${OBJECTDIR}/mBuzzer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mBuzzer.o.d" -MT "${OBJECTDIR}/mBuzzer.o.d" -MT ${OBJECTDIR}/mBuzzer.o -o ${OBJECTDIR}/mBuzzer.o mBuzzer.c 
	
${OBJECTDIR}/m7Segment.o: m7Segment.c  .generated_files/flags/default/f8c0a663d2ea70fa4275e5ac95de4084e9d561f0 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/m7Segment.o.d 
	@${RM} ${OBJECTDIR}/m7Segment.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/m7Segment.o.d" -MT "${OBJECTDIR}/m7Segment.o.d" -MT ${OBJECTDIR}/m7Segment.o -o ${OBJECTDIR}/m7Segment.o m7Segment.c 
	
${OBJECTDIR}/mLCD8.o: mLCD8.c  .generated_files/flags/default/eedb31b617986aeadae2a12a09cf53e75304ce03 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD8.o.d 
	@${RM} ${OBJECTDIR}/mLCD8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD8.o.d" -MT "${OBJECTDIR}/mLCD8.o.d" -MT ${OBJECTDIR}/mLCD8.o -o ${OBJECTDIR}/mLCD8.o mLCD8.c 
	
${OBJECTDIR}/mLCD4.o: mLCD4.c  .generated_files/flags/default/7e263bd40fabaf89c21a8759898963b437345f96 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD4.o.d 
	@${RM} ${OBJECTDIR}/mLCD4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD4.o.d" -MT "${OBJECTDIR}/mLCD4.o.d" -MT ${OBJECTDIR}/mLCD4.o -o ${OBJECTDIR}/mLCD4.o mLCD4.c 
	
${OBJECTDIR}/EXT_INT.o: EXT_INT.c  .generated_files/flags/default/f4bf45967dae05f1877dc148175655b869223ac7 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EXT_INT.o.d 
	@${RM} ${OBJECTDIR}/EXT_INT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EXT_INT.o.d" -MT "${OBJECTDIR}/EXT_INT.o.d" -MT ${OBJECTDIR}/EXT_INT.o -o ${OBJECTDIR}/EXT_INT.o EXT_INT.c 
	
${OBJECTDIR}/mADC.o: mADC.c  .generated_files/flags/default/e6f925d42102f15247d22712a12e408d06ef85fc .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mADC.o.d 
	@${RM} ${OBJECTDIR}/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mADC.o.d" -MT "${OBJECTDIR}/mADC.o.d" -MT ${OBJECTDIR}/mADC.o -o ${OBJECTDIR}/mADC.o mADC.c 
	
${OBJECTDIR}/mTimer.o: mTimer.c  .generated_files/flags/default/58ed190f5fcc7bb4c22593b7c6735553bea32fa7 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTimer.o.d 
	@${RM} ${OBJECTDIR}/mTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTimer.o.d" -MT "${OBJECTDIR}/mTimer.o.d" -MT ${OBJECTDIR}/mTimer.o -o ${OBJECTDIR}/mTimer.o mTimer.c 
	
${OBJECTDIR}/mUART.o: mUART.c  .generated_files/flags/default/c9a3b336864cbe46e991fcefb5fac6a51602da5 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mUART.o.d 
	@${RM} ${OBJECTDIR}/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mUART.o.d" -MT "${OBJECTDIR}/mUART.o.d" -MT ${OBJECTDIR}/mUART.o -o ${OBJECTDIR}/mUART.o mUART.c 
	
${OBJECTDIR}/mSPI.o: mSPI.c  .generated_files/flags/default/411e9b22f090abe5e37e9bbf3222eb609679e5e9 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mSPI.o.d 
	@${RM} ${OBJECTDIR}/mSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mSPI.o.d" -MT "${OBJECTDIR}/mSPI.o.d" -MT ${OBJECTDIR}/mSPI.o -o ${OBJECTDIR}/mSPI.o mSPI.c 
	
${OBJECTDIR}/m24CL40.o: m24CL40.c  .generated_files/flags/default/be3440acfc0109d6a8e86c08b81c3d4c6f653914 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/m24CL40.o.d 
	@${RM} ${OBJECTDIR}/m24CL40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/m24CL40.o.d" -MT "${OBJECTDIR}/m24CL40.o.d" -MT ${OBJECTDIR}/m24CL40.o -o ${OBJECTDIR}/m24CL40.o m24CL40.c 
	
${OBJECTDIR}/mTWI.o: mTWI.c  .generated_files/flags/default/19df3481b5623d489290e18bcc3a7b3c1260d0c7 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTWI.o.d 
	@${RM} ${OBJECTDIR}/mTWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTWI.o.d" -MT "${OBJECTDIR}/mTWI.o.d" -MT ${OBJECTDIR}/mTWI.o -o ${OBJECTDIR}/mTWI.o mTWI.c 
	
${OBJECTDIR}/M24C16_TWI.o: M24C16_TWI.c  .generated_files/flags/default/c5b9d600f2bf8710c5059228936b7fa92b9544bb .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/M24C16_TWI.o.d 
	@${RM} ${OBJECTDIR}/M24C16_TWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/M24C16_TWI.o.d" -MT "${OBJECTDIR}/M24C16_TWI.o.d" -MT ${OBJECTDIR}/M24C16_TWI.o -o ${OBJECTDIR}/M24C16_TWI.o M24C16_TWI.c 
	
${OBJECTDIR}/freertos/croutine.o: freertos/croutine.c  .generated_files/flags/default/1dd85f4189a2175b0b1532157d5e080114c10027 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/croutine.o.d 
	@${RM} ${OBJECTDIR}/freertos/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/croutine.o.d" -MT "${OBJECTDIR}/freertos/croutine.o.d" -MT ${OBJECTDIR}/freertos/croutine.o -o ${OBJECTDIR}/freertos/croutine.o freertos/croutine.c 
	
${OBJECTDIR}/freertos/event_groups.o: freertos/event_groups.c  .generated_files/flags/default/c4e92add20a04cef0a36e786d282b2d78b4d618c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/event_groups.o.d 
	@${RM} ${OBJECTDIR}/freertos/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/event_groups.o.d" -MT "${OBJECTDIR}/freertos/event_groups.o.d" -MT ${OBJECTDIR}/freertos/event_groups.o -o ${OBJECTDIR}/freertos/event_groups.o freertos/event_groups.c 
	
${OBJECTDIR}/freertos/heap_4.o: freertos/heap_4.c  .generated_files/flags/default/76971b1e048aeae93ef643a5eada39c704c761a7 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/heap_4.o.d 
	@${RM} ${OBJECTDIR}/freertos/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/heap_4.o.d" -MT "${OBJECTDIR}/freertos/heap_4.o.d" -MT ${OBJECTDIR}/freertos/heap_4.o -o ${OBJECTDIR}/freertos/heap_4.o freertos/heap_4.c 
	
${OBJECTDIR}/freertos/list.o: freertos/list.c  .generated_files/flags/default/cea0f24f7900f664f3ba40b9f78555c037de9d61 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/list.o.d 
	@${RM} ${OBJECTDIR}/freertos/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/list.o.d" -MT "${OBJECTDIR}/freertos/list.o.d" -MT ${OBJECTDIR}/freertos/list.o -o ${OBJECTDIR}/freertos/list.o freertos/list.c 
	
${OBJECTDIR}/freertos/port.o: freertos/port.c  .generated_files/flags/default/5467f9447d914cd06762b177c6ba700a67b2323a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/port.o.d 
	@${RM} ${OBJECTDIR}/freertos/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/port.o.d" -MT "${OBJECTDIR}/freertos/port.o.d" -MT ${OBJECTDIR}/freertos/port.o -o ${OBJECTDIR}/freertos/port.o freertos/port.c 
	
${OBJECTDIR}/freertos/queue.o: freertos/queue.c  .generated_files/flags/default/3f02de58f2e14939c9185e460124f6e4e14fefec .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/queue.o.d 
	@${RM} ${OBJECTDIR}/freertos/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/queue.o.d" -MT "${OBJECTDIR}/freertos/queue.o.d" -MT ${OBJECTDIR}/freertos/queue.o -o ${OBJECTDIR}/freertos/queue.o freertos/queue.c 
	
${OBJECTDIR}/freertos/stream_buffer.o: freertos/stream_buffer.c  .generated_files/flags/default/e16f194dae79010f4fc4fad56412d16cccbf9edd .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/freertos/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/stream_buffer.o.d" -MT "${OBJECTDIR}/freertos/stream_buffer.o.d" -MT ${OBJECTDIR}/freertos/stream_buffer.o -o ${OBJECTDIR}/freertos/stream_buffer.o freertos/stream_buffer.c 
	
${OBJECTDIR}/freertos/tasks.o: freertos/tasks.c  .generated_files/flags/default/8fe0745bd9fee5aa82fd0bcce9b0c9f4fa33f8ce .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/tasks.o.d 
	@${RM} ${OBJECTDIR}/freertos/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/tasks.o.d" -MT "${OBJECTDIR}/freertos/tasks.o.d" -MT ${OBJECTDIR}/freertos/tasks.o -o ${OBJECTDIR}/freertos/tasks.o freertos/tasks.c 
	
${OBJECTDIR}/freertos/timers.o: freertos/timers.c  .generated_files/flags/default/f5c0c602df3696bf50ed9e376705974f7bf1839a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/timers.o.d 
	@${RM} ${OBJECTDIR}/freertos/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/timers.o.d" -MT "${OBJECTDIR}/freertos/timers.o.d" -MT ${OBJECTDIR}/freertos/timers.o -o ${OBJECTDIR}/freertos/timers.o freertos/timers.c 
	
${OBJECTDIR}/EEPROM.o: EEPROM.c  .generated_files/flags/default/53d61a11f4491b51ac28335c1bf0f22ffcb68d91 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EEPROM.o.d" -MT "${OBJECTDIR}/EEPROM.o.d" -MT ${OBJECTDIR}/EEPROM.o -o ${OBJECTDIR}/EEPROM.o EEPROM.c 
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f4c3057782fdd21250cbaa859cfefcd926f205b6 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/DIO_Interface.o: DIO_Interface.c  .generated_files/flags/default/d127661593ada4775a8c4260e07f7267b16774e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DIO_Interface.o.d 
	@${RM} ${OBJECTDIR}/DIO_Interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/DIO_Interface.o.d" -MT "${OBJECTDIR}/DIO_Interface.o.d" -MT ${OBJECTDIR}/DIO_Interface.o -o ${OBJECTDIR}/DIO_Interface.o DIO_Interface.c 
	
${OBJECTDIR}/mLEDs.o: mLEDs.c  .generated_files/flags/default/7525e62d80a624210781929234aade1e278e0d24 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLEDs.o.d 
	@${RM} ${OBJECTDIR}/mLEDs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLEDs.o.d" -MT "${OBJECTDIR}/mLEDs.o.d" -MT ${OBJECTDIR}/mLEDs.o -o ${OBJECTDIR}/mLEDs.o mLEDs.c 
	
${OBJECTDIR}/mButtons.o: mButtons.c  .generated_files/flags/default/26fcc5fef087bbb42c02a9ef1936226010ce6a09 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mButtons.o.d 
	@${RM} ${OBJECTDIR}/mButtons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mButtons.o.d" -MT "${OBJECTDIR}/mButtons.o.d" -MT ${OBJECTDIR}/mButtons.o -o ${OBJECTDIR}/mButtons.o mButtons.c 
	
${OBJECTDIR}/mRelay.o: mRelay.c  .generated_files/flags/default/1bfb9b9557f376e13f7d4005fc4670388247a28e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mRelay.o.d 
	@${RM} ${OBJECTDIR}/mRelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mRelay.o.d" -MT "${OBJECTDIR}/mRelay.o.d" -MT ${OBJECTDIR}/mRelay.o -o ${OBJECTDIR}/mRelay.o mRelay.c 
	
${OBJECTDIR}/mBuzzer.o: mBuzzer.c  .generated_files/flags/default/d2400d727640d31e91e8ac84152c60728097c219 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mBuzzer.o.d 
	@${RM} ${OBJECTDIR}/mBuzzer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mBuzzer.o.d" -MT "${OBJECTDIR}/mBuzzer.o.d" -MT ${OBJECTDIR}/mBuzzer.o -o ${OBJECTDIR}/mBuzzer.o mBuzzer.c 
	
${OBJECTDIR}/m7Segment.o: m7Segment.c  .generated_files/flags/default/b8c77fab896206f3e09036f3efb884b0a81f04ab .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/m7Segment.o.d 
	@${RM} ${OBJECTDIR}/m7Segment.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/m7Segment.o.d" -MT "${OBJECTDIR}/m7Segment.o.d" -MT ${OBJECTDIR}/m7Segment.o -o ${OBJECTDIR}/m7Segment.o m7Segment.c 
	
${OBJECTDIR}/mLCD8.o: mLCD8.c  .generated_files/flags/default/6867958e0e09f6f5913da85498182061832950ab .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD8.o.d 
	@${RM} ${OBJECTDIR}/mLCD8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD8.o.d" -MT "${OBJECTDIR}/mLCD8.o.d" -MT ${OBJECTDIR}/mLCD8.o -o ${OBJECTDIR}/mLCD8.o mLCD8.c 
	
${OBJECTDIR}/mLCD4.o: mLCD4.c  .generated_files/flags/default/3726727895643af0203c29035fb68044fc3100a3 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD4.o.d 
	@${RM} ${OBJECTDIR}/mLCD4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD4.o.d" -MT "${OBJECTDIR}/mLCD4.o.d" -MT ${OBJECTDIR}/mLCD4.o -o ${OBJECTDIR}/mLCD4.o mLCD4.c 
	
${OBJECTDIR}/EXT_INT.o: EXT_INT.c  .generated_files/flags/default/fd3d4362d91cc86687fa0c1ffec6cdc9729fb93d .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EXT_INT.o.d 
	@${RM} ${OBJECTDIR}/EXT_INT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EXT_INT.o.d" -MT "${OBJECTDIR}/EXT_INT.o.d" -MT ${OBJECTDIR}/EXT_INT.o -o ${OBJECTDIR}/EXT_INT.o EXT_INT.c 
	
${OBJECTDIR}/mADC.o: mADC.c  .generated_files/flags/default/342936cba58de6aa2cc3906852913e36285981be .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mADC.o.d 
	@${RM} ${OBJECTDIR}/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mADC.o.d" -MT "${OBJECTDIR}/mADC.o.d" -MT ${OBJECTDIR}/mADC.o -o ${OBJECTDIR}/mADC.o mADC.c 
	
${OBJECTDIR}/mTimer.o: mTimer.c  .generated_files/flags/default/d03fdd206d29c4b6f7be2e19e4babadaa434d526 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTimer.o.d 
	@${RM} ${OBJECTDIR}/mTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTimer.o.d" -MT "${OBJECTDIR}/mTimer.o.d" -MT ${OBJECTDIR}/mTimer.o -o ${OBJECTDIR}/mTimer.o mTimer.c 
	
${OBJECTDIR}/mUART.o: mUART.c  .generated_files/flags/default/7d70807748681abe05b03342d0b365117bd2d066 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mUART.o.d 
	@${RM} ${OBJECTDIR}/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mUART.o.d" -MT "${OBJECTDIR}/mUART.o.d" -MT ${OBJECTDIR}/mUART.o -o ${OBJECTDIR}/mUART.o mUART.c 
	
${OBJECTDIR}/mSPI.o: mSPI.c  .generated_files/flags/default/2d9acf6cd3f04bec648848bf7c1bf2d13efda1d2 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mSPI.o.d 
	@${RM} ${OBJECTDIR}/mSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mSPI.o.d" -MT "${OBJECTDIR}/mSPI.o.d" -MT ${OBJECTDIR}/mSPI.o -o ${OBJECTDIR}/mSPI.o mSPI.c 
	
${OBJECTDIR}/m24CL40.o: m24CL40.c  .generated_files/flags/default/3bf15178e6c07fad09b2ca66a0b7c3060488a02f .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/m24CL40.o.d 
	@${RM} ${OBJECTDIR}/m24CL40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/m24CL40.o.d" -MT "${OBJECTDIR}/m24CL40.o.d" -MT ${OBJECTDIR}/m24CL40.o -o ${OBJECTDIR}/m24CL40.o m24CL40.c 
	
${OBJECTDIR}/mTWI.o: mTWI.c  .generated_files/flags/default/ef341d000416e21f5957d7c5a011cafadcf89c01 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTWI.o.d 
	@${RM} ${OBJECTDIR}/mTWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTWI.o.d" -MT "${OBJECTDIR}/mTWI.o.d" -MT ${OBJECTDIR}/mTWI.o -o ${OBJECTDIR}/mTWI.o mTWI.c 
	
${OBJECTDIR}/M24C16_TWI.o: M24C16_TWI.c  .generated_files/flags/default/2ec5f4d6b52744e4024b8ceb08bb4b8503994d49 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/M24C16_TWI.o.d 
	@${RM} ${OBJECTDIR}/M24C16_TWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/M24C16_TWI.o.d" -MT "${OBJECTDIR}/M24C16_TWI.o.d" -MT ${OBJECTDIR}/M24C16_TWI.o -o ${OBJECTDIR}/M24C16_TWI.o M24C16_TWI.c 
	
${OBJECTDIR}/freertos/croutine.o: freertos/croutine.c  .generated_files/flags/default/edbf37bb3b54e489cd8066690ff86ee916716c1a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/croutine.o.d 
	@${RM} ${OBJECTDIR}/freertos/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/croutine.o.d" -MT "${OBJECTDIR}/freertos/croutine.o.d" -MT ${OBJECTDIR}/freertos/croutine.o -o ${OBJECTDIR}/freertos/croutine.o freertos/croutine.c 
	
${OBJECTDIR}/freertos/event_groups.o: freertos/event_groups.c  .generated_files/flags/default/bbeec5ed6104c2f381a8d0fcdff76b3e9356257b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/event_groups.o.d 
	@${RM} ${OBJECTDIR}/freertos/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/event_groups.o.d" -MT "${OBJECTDIR}/freertos/event_groups.o.d" -MT ${OBJECTDIR}/freertos/event_groups.o -o ${OBJECTDIR}/freertos/event_groups.o freertos/event_groups.c 
	
${OBJECTDIR}/freertos/heap_4.o: freertos/heap_4.c  .generated_files/flags/default/29f420134b62617472399d7331d89b6a80c99ed1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/heap_4.o.d 
	@${RM} ${OBJECTDIR}/freertos/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/heap_4.o.d" -MT "${OBJECTDIR}/freertos/heap_4.o.d" -MT ${OBJECTDIR}/freertos/heap_4.o -o ${OBJECTDIR}/freertos/heap_4.o freertos/heap_4.c 
	
${OBJECTDIR}/freertos/list.o: freertos/list.c  .generated_files/flags/default/5910ec55ffb81278b4463df24a64f907ac34009e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/list.o.d 
	@${RM} ${OBJECTDIR}/freertos/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/list.o.d" -MT "${OBJECTDIR}/freertos/list.o.d" -MT ${OBJECTDIR}/freertos/list.o -o ${OBJECTDIR}/freertos/list.o freertos/list.c 
	
${OBJECTDIR}/freertos/port.o: freertos/port.c  .generated_files/flags/default/c47efa4afb484c57f816e0443e6811bb81fe0b07 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/port.o.d 
	@${RM} ${OBJECTDIR}/freertos/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/port.o.d" -MT "${OBJECTDIR}/freertos/port.o.d" -MT ${OBJECTDIR}/freertos/port.o -o ${OBJECTDIR}/freertos/port.o freertos/port.c 
	
${OBJECTDIR}/freertos/queue.o: freertos/queue.c  .generated_files/flags/default/d0fa2e5e482ca53a9203d90f210c306fef1f92a7 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/queue.o.d 
	@${RM} ${OBJECTDIR}/freertos/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/queue.o.d" -MT "${OBJECTDIR}/freertos/queue.o.d" -MT ${OBJECTDIR}/freertos/queue.o -o ${OBJECTDIR}/freertos/queue.o freertos/queue.c 
	
${OBJECTDIR}/freertos/stream_buffer.o: freertos/stream_buffer.c  .generated_files/flags/default/4ac4462003580412110c06c406556d35c2baf37a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/freertos/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/stream_buffer.o.d" -MT "${OBJECTDIR}/freertos/stream_buffer.o.d" -MT ${OBJECTDIR}/freertos/stream_buffer.o -o ${OBJECTDIR}/freertos/stream_buffer.o freertos/stream_buffer.c 
	
${OBJECTDIR}/freertos/tasks.o: freertos/tasks.c  .generated_files/flags/default/267e235615e64c5a5a2230ebf04b3d5901633800 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/tasks.o.d 
	@${RM} ${OBJECTDIR}/freertos/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/tasks.o.d" -MT "${OBJECTDIR}/freertos/tasks.o.d" -MT ${OBJECTDIR}/freertos/tasks.o -o ${OBJECTDIR}/freertos/tasks.o freertos/tasks.c 
	
${OBJECTDIR}/freertos/timers.o: freertos/timers.c  .generated_files/flags/default/7a599370c25bb1c34a939bbf09750fd5d9197d73 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/freertos" 
	@${RM} ${OBJECTDIR}/freertos/timers.o.d 
	@${RM} ${OBJECTDIR}/freertos/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/freertos/timers.o.d" -MT "${OBJECTDIR}/freertos/timers.o.d" -MT ${OBJECTDIR}/freertos/timers.o -o ${OBJECTDIR}/freertos/timers.o freertos/timers.c 
	
${OBJECTDIR}/EEPROM.o: EEPROM.c  .generated_files/flags/default/5c0e5930b2469b714e1826a61a5ac27aa71e92f9 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EEPROM.o.d" -MT "${OBJECTDIR}/EEPROM.o.d" -MT ${OBJECTDIR}/EEPROM.o -o ${OBJECTDIR}/EEPROM.o EEPROM.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/ALEX47.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
