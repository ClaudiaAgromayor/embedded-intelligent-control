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
FINAL_IMAGE=${DISTDIR}/P3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/P3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="../../../../../../Downloads/Archivos del proyecto base/config.c" "../../../../../../Downloads/Archivos del proyecto base/main1.c" "../../../../../../Downloads/Archivos del proyecto base/main2.c" "../../../../../../Downloads/Archivos del proyecto base/retardo.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/336892990/config.o ${OBJECTDIR}/_ext/336892990/main1.o ${OBJECTDIR}/_ext/336892990/main2.o ${OBJECTDIR}/_ext/336892990/retardo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/336892990/config.o.d ${OBJECTDIR}/_ext/336892990/main1.o.d ${OBJECTDIR}/_ext/336892990/main2.o.d ${OBJECTDIR}/_ext/336892990/retardo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/336892990/config.o ${OBJECTDIR}/_ext/336892990/main1.o ${OBJECTDIR}/_ext/336892990/main2.o ${OBJECTDIR}/_ext/336892990/retardo.o

# Source Files
SOURCEFILES=../../../../../../Downloads/Archivos del proyecto base/config.c ../../../../../../Downloads/Archivos del proyecto base/main1.c ../../../../../../Downloads/Archivos del proyecto base/main2.c ../../../../../../Downloads/Archivos del proyecto base/retardo.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/P3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ32MC202
MP_LINKER_FILE_OPTION=,--script=p33FJ32MC202.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/336892990/config.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/config.c  .generated_files/flags/default/43dcb6e0c4bb768a75c19de1755132fa0f45d17e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/config.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/config.c"  -o ${OBJECTDIR}/_ext/336892990/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/336892990/main1.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/main1.c  .generated_files/flags/default/683518c84b07c49e15933622d4a9f985cfbec9a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/main1.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/main1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/main1.c"  -o ${OBJECTDIR}/_ext/336892990/main1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/main1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/336892990/main2.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/main2.c  .generated_files/flags/default/4f4948ede349f6808fd6b1487f046c97a6b8449 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/main2.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/main2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/main2.c"  -o ${OBJECTDIR}/_ext/336892990/main2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/main2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/336892990/retardo.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/retardo.c  .generated_files/flags/default/e16d868b9f2dde00dd42793f0983234ffd5280cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/retardo.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/retardo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/retardo.c"  -o ${OBJECTDIR}/_ext/336892990/retardo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/retardo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/336892990/config.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/config.c  .generated_files/flags/default/c7aa863205d358f93b348d2e60e253044c3d2314 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/config.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/config.c"  -o ${OBJECTDIR}/_ext/336892990/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/config.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/336892990/main1.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/main1.c  .generated_files/flags/default/7f6852b39e6739074e9142cdf3d2058cbe32859b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/main1.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/main1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/main1.c"  -o ${OBJECTDIR}/_ext/336892990/main1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/main1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/336892990/main2.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/main2.c  .generated_files/flags/default/de1b5441d3c061244afcdc42a6bc615b1bdd1fcd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/main2.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/main2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/main2.c"  -o ${OBJECTDIR}/_ext/336892990/main2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/main2.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/336892990/retardo.o: ../../../../../../Downloads/Archivos\ del\ proyecto\ base/retardo.c  .generated_files/flags/default/9d3793fa81264db0e32273f347e854677bc43e78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/336892990" 
	@${RM} ${OBJECTDIR}/_ext/336892990/retardo.o.d 
	@${RM} ${OBJECTDIR}/_ext/336892990/retardo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../../Downloads/Archivos del proyecto base/retardo.c"  -o ${OBJECTDIR}/_ext/336892990/retardo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/336892990/retardo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/P3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/P3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/P3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/P3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/P3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
