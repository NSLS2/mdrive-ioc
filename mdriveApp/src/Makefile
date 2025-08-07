TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = mdrive
# mdrive.dbd will be created and installed
DBD += mdrive.dbd

# mdrive.dbd will be made up from these files:
mdrive_DBD += base.dbd

# Include dbd files from all support applications:
mdrive_DBD += asyn.dbd
mdrive_DBD += busySupport.dbd
mdrive_DBD += drvAsynIPPort.dbd drvAsynSerialPort.dbd
mdrive_DBD += calc.dbd calcSupport.dbd
mdrive_DBD += stream.dbd
mdrive_DBD += asSupport.dbd
mdrive_DBD += devIocStats.dbd
mdrive_DBD += calcSupport.dbd
mdrive_DBD += reccaster.dbd
mdrive_DBD += motorSupport.dbd devImsMotor.dbd

# Add all the support libraries needed by this IOC
mdrive_LIBS += asyn busy calc  stream autosave devIocStats reccaster motor Ims

# mdrive_registerRecordDeviceDriver.cpp derives from mdrive.dbd
mdrive_SRCS += mdrive_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
mdrive_SRCS_DEFAULT += mdriveMain.cpp
mdrive_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#mdrive_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
mdrive_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

