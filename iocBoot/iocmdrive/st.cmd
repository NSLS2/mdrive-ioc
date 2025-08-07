#!../../bin/linux-x86_64/mdrive

#- You may have to change mdrive to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/mdrive.dbd",0,0)
mdrive_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/mdrive.db","user=hxu")

iocInit()

## Start any sequence programs
#seq sncmdrive,"user=hxu"
