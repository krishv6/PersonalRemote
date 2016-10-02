#!/bin/sh

# Setting values for variables
PID_FILE="/home/pi/run/cctvRecord.py.pid"
ENABLE_FILE="/home/pi/boot/cameraDefaultEnabled"
CCTV_LAUNCHER="/home/pi/bin/cctvRecord"
logger -p6 "Starting init service for pi"

# Remove the pid file of cctvRecord
rm -f "$PID_FILE"

# Enable camera service if defined
if [ -f "$ENABLE_FILE" ]
then
   logger -p6 "Starting camera service for pi"
   "$CCTV_LAUNCHER" start
fi
