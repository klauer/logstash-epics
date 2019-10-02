# Configure the errlog client
epicsEnvSet EPICS_IOC_LOG_INET loghost
epicsEnvSet EPICS_IOC_LOG_PORT 7004
iocLogInit

# Configure and start the caPutLogger after iocInit
epicsEnvSet EPICS_AS_PUT_LOG_PV "${IOC}:caPutLatest"
caPutLogInit "loghost:7011"
