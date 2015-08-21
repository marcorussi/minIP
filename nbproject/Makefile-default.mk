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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/hal/ethmac.c src/hal/ethphy.c src/hal/int.c src/hal/port.c src/hal/pwm.c src/hal/tmr.c src/sal/ip/arp.c src/sal/ip/icmp.c src/sal/ip/ipv4.c src/sal/rtos/rtos.c src/sal/rtos/rtos_cfg.c src/sal/sys/exc.c src/sal/sys/main.c src/app_ip.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/hal/ethmac.o ${OBJECTDIR}/src/hal/ethphy.o ${OBJECTDIR}/src/hal/int.o ${OBJECTDIR}/src/hal/port.o ${OBJECTDIR}/src/hal/pwm.o ${OBJECTDIR}/src/hal/tmr.o ${OBJECTDIR}/src/sal/ip/arp.o ${OBJECTDIR}/src/sal/ip/icmp.o ${OBJECTDIR}/src/sal/ip/ipv4.o ${OBJECTDIR}/src/sal/rtos/rtos.o ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o ${OBJECTDIR}/src/sal/sys/exc.o ${OBJECTDIR}/src/sal/sys/main.o ${OBJECTDIR}/src/app_ip.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/hal/ethmac.o.d ${OBJECTDIR}/src/hal/ethphy.o.d ${OBJECTDIR}/src/hal/int.o.d ${OBJECTDIR}/src/hal/port.o.d ${OBJECTDIR}/src/hal/pwm.o.d ${OBJECTDIR}/src/hal/tmr.o.d ${OBJECTDIR}/src/sal/ip/arp.o.d ${OBJECTDIR}/src/sal/ip/icmp.o.d ${OBJECTDIR}/src/sal/ip/ipv4.o.d ${OBJECTDIR}/src/sal/rtos/rtos.o.d ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o.d ${OBJECTDIR}/src/sal/sys/exc.o.d ${OBJECTDIR}/src/sal/sys/main.o.d ${OBJECTDIR}/src/app_ip.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/hal/ethmac.o ${OBJECTDIR}/src/hal/ethphy.o ${OBJECTDIR}/src/hal/int.o ${OBJECTDIR}/src/hal/port.o ${OBJECTDIR}/src/hal/pwm.o ${OBJECTDIR}/src/hal/tmr.o ${OBJECTDIR}/src/sal/ip/arp.o ${OBJECTDIR}/src/sal/ip/icmp.o ${OBJECTDIR}/src/sal/ip/ipv4.o ${OBJECTDIR}/src/sal/rtos/rtos.o ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o ${OBJECTDIR}/src/sal/sys/exc.o ${OBJECTDIR}/src/sal/sys/main.o ${OBJECTDIR}/src/app_ip.o

# Source Files
SOURCEFILES=src/hal/ethmac.c src/hal/ethphy.c src/hal/int.c src/hal/port.c src/hal/pwm.c src/hal/tmr.c src/sal/ip/arp.c src/sal/ip/icmp.c src/sal/ip/ipv4.c src/sal/rtos/rtos.c src/sal/rtos/rtos_cfg.c src/sal/sys/exc.c src/sal/sys/main.c src/app_ip.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/hal/ethmac.o: src/hal/ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/ethmac.o.d 
	@${RM} ${OBJECTDIR}/src/hal/ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/ethmac.o.d" -o ${OBJECTDIR}/src/hal/ethmac.o src/hal/ethmac.c   
	
${OBJECTDIR}/src/hal/ethphy.o: src/hal/ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/ethphy.o.d 
	@${RM} ${OBJECTDIR}/src/hal/ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/ethphy.o.d" -o ${OBJECTDIR}/src/hal/ethphy.o src/hal/ethphy.c   
	
${OBJECTDIR}/src/hal/int.o: src/hal/int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/int.o.d 
	@${RM} ${OBJECTDIR}/src/hal/int.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/int.o.d" -o ${OBJECTDIR}/src/hal/int.o src/hal/int.c   
	
${OBJECTDIR}/src/hal/port.o: src/hal/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/port.o.d 
	@${RM} ${OBJECTDIR}/src/hal/port.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/port.o.d" -o ${OBJECTDIR}/src/hal/port.o src/hal/port.c   
	
${OBJECTDIR}/src/hal/pwm.o: src/hal/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/hal/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/pwm.o.d" -o ${OBJECTDIR}/src/hal/pwm.o src/hal/pwm.c   
	
${OBJECTDIR}/src/hal/tmr.o: src/hal/tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/tmr.o.d 
	@${RM} ${OBJECTDIR}/src/hal/tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/tmr.o.d" -o ${OBJECTDIR}/src/hal/tmr.o src/hal/tmr.c   
	
${OBJECTDIR}/src/sal/ip/arp.o: src/sal/ip/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/ip 
	@${RM} ${OBJECTDIR}/src/sal/ip/arp.o.d 
	@${RM} ${OBJECTDIR}/src/sal/ip/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/ip/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/ip/arp.o.d" -o ${OBJECTDIR}/src/sal/ip/arp.o src/sal/ip/arp.c   
	
${OBJECTDIR}/src/sal/ip/icmp.o: src/sal/ip/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/ip 
	@${RM} ${OBJECTDIR}/src/sal/ip/icmp.o.d 
	@${RM} ${OBJECTDIR}/src/sal/ip/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/ip/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/ip/icmp.o.d" -o ${OBJECTDIR}/src/sal/ip/icmp.o src/sal/ip/icmp.c   
	
${OBJECTDIR}/src/sal/ip/ipv4.o: src/sal/ip/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/ip 
	@${RM} ${OBJECTDIR}/src/sal/ip/ipv4.o.d 
	@${RM} ${OBJECTDIR}/src/sal/ip/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/ip/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/ip/ipv4.o.d" -o ${OBJECTDIR}/src/sal/ip/ipv4.o src/sal/ip/ipv4.c   
	
${OBJECTDIR}/src/sal/rtos/rtos.o: src/sal/rtos/rtos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/rtos 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos.o.d 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/rtos/rtos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/rtos/rtos.o.d" -o ${OBJECTDIR}/src/sal/rtos/rtos.o src/sal/rtos/rtos.c   
	
${OBJECTDIR}/src/sal/rtos/rtos_cfg.o: src/sal/rtos/rtos_cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/rtos 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o.d 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/rtos/rtos_cfg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/rtos/rtos_cfg.o.d" -o ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o src/sal/rtos/rtos_cfg.c   
	
${OBJECTDIR}/src/sal/sys/exc.o: src/sal/sys/exc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/sys 
	@${RM} ${OBJECTDIR}/src/sal/sys/exc.o.d 
	@${RM} ${OBJECTDIR}/src/sal/sys/exc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/sys/exc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/sys/exc.o.d" -o ${OBJECTDIR}/src/sal/sys/exc.o src/sal/sys/exc.c   
	
${OBJECTDIR}/src/sal/sys/main.o: src/sal/sys/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/sys 
	@${RM} ${OBJECTDIR}/src/sal/sys/main.o.d 
	@${RM} ${OBJECTDIR}/src/sal/sys/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/sys/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/sys/main.o.d" -o ${OBJECTDIR}/src/sal/sys/main.o src/sal/sys/main.c   
	
${OBJECTDIR}/src/app_ip.o: src/app_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/app_ip.o.d 
	@${RM} ${OBJECTDIR}/src/app_ip.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app_ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/app_ip.o.d" -o ${OBJECTDIR}/src/app_ip.o src/app_ip.c   
	
else
${OBJECTDIR}/src/hal/ethmac.o: src/hal/ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/ethmac.o.d 
	@${RM} ${OBJECTDIR}/src/hal/ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/ethmac.o.d" -o ${OBJECTDIR}/src/hal/ethmac.o src/hal/ethmac.c   
	
${OBJECTDIR}/src/hal/ethphy.o: src/hal/ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/ethphy.o.d 
	@${RM} ${OBJECTDIR}/src/hal/ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/ethphy.o.d" -o ${OBJECTDIR}/src/hal/ethphy.o src/hal/ethphy.c   
	
${OBJECTDIR}/src/hal/int.o: src/hal/int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/int.o.d 
	@${RM} ${OBJECTDIR}/src/hal/int.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/int.o.d" -o ${OBJECTDIR}/src/hal/int.o src/hal/int.c   
	
${OBJECTDIR}/src/hal/port.o: src/hal/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/port.o.d 
	@${RM} ${OBJECTDIR}/src/hal/port.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/port.o.d" -o ${OBJECTDIR}/src/hal/port.o src/hal/port.c   
	
${OBJECTDIR}/src/hal/pwm.o: src/hal/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/hal/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/pwm.o.d" -o ${OBJECTDIR}/src/hal/pwm.o src/hal/pwm.c   
	
${OBJECTDIR}/src/hal/tmr.o: src/hal/tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/hal 
	@${RM} ${OBJECTDIR}/src/hal/tmr.o.d 
	@${RM} ${OBJECTDIR}/src/hal/tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/src/hal/tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/hal/tmr.o.d" -o ${OBJECTDIR}/src/hal/tmr.o src/hal/tmr.c   
	
${OBJECTDIR}/src/sal/ip/arp.o: src/sal/ip/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/ip 
	@${RM} ${OBJECTDIR}/src/sal/ip/arp.o.d 
	@${RM} ${OBJECTDIR}/src/sal/ip/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/ip/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/ip/arp.o.d" -o ${OBJECTDIR}/src/sal/ip/arp.o src/sal/ip/arp.c   
	
${OBJECTDIR}/src/sal/ip/icmp.o: src/sal/ip/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/ip 
	@${RM} ${OBJECTDIR}/src/sal/ip/icmp.o.d 
	@${RM} ${OBJECTDIR}/src/sal/ip/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/ip/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/ip/icmp.o.d" -o ${OBJECTDIR}/src/sal/ip/icmp.o src/sal/ip/icmp.c   
	
${OBJECTDIR}/src/sal/ip/ipv4.o: src/sal/ip/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/ip 
	@${RM} ${OBJECTDIR}/src/sal/ip/ipv4.o.d 
	@${RM} ${OBJECTDIR}/src/sal/ip/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/ip/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/ip/ipv4.o.d" -o ${OBJECTDIR}/src/sal/ip/ipv4.o src/sal/ip/ipv4.c   
	
${OBJECTDIR}/src/sal/rtos/rtos.o: src/sal/rtos/rtos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/rtos 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos.o.d 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/rtos/rtos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/rtos/rtos.o.d" -o ${OBJECTDIR}/src/sal/rtos/rtos.o src/sal/rtos/rtos.c   
	
${OBJECTDIR}/src/sal/rtos/rtos_cfg.o: src/sal/rtos/rtos_cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/rtos 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o.d 
	@${RM} ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/rtos/rtos_cfg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/rtos/rtos_cfg.o.d" -o ${OBJECTDIR}/src/sal/rtos/rtos_cfg.o src/sal/rtos/rtos_cfg.c   
	
${OBJECTDIR}/src/sal/sys/exc.o: src/sal/sys/exc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/sys 
	@${RM} ${OBJECTDIR}/src/sal/sys/exc.o.d 
	@${RM} ${OBJECTDIR}/src/sal/sys/exc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/sys/exc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/sys/exc.o.d" -o ${OBJECTDIR}/src/sal/sys/exc.o src/sal/sys/exc.c   
	
${OBJECTDIR}/src/sal/sys/main.o: src/sal/sys/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/sal/sys 
	@${RM} ${OBJECTDIR}/src/sal/sys/main.o.d 
	@${RM} ${OBJECTDIR}/src/sal/sys/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sal/sys/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/sal/sys/main.o.d" -o ${OBJECTDIR}/src/sal/sys/main.o src/sal/sys/main.c   
	
${OBJECTDIR}/src/app_ip.o: src/app_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/app_ip.o.d 
	@${RM} ${OBJECTDIR}/src/app_ip.o 
	@${FIXDEPS} "${OBJECTDIR}/src/app_ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/app_ip.o.d" -o ${OBJECTDIR}/src/app_ip.o src/app_ip.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=44960,--defsym=_min_stack_size=2048,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--defsym=_min_stack_size=2048,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/minIP.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
