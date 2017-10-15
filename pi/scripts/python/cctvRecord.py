#!/usr/bin/python3.4
import picamera
from picamera import PiCamera
from time import sleep
import datetime
from datetime import timedelta
import time
import glob
import os
CAMERA_HOME='/home/pi/camera/'
RECORD_TIME=1800
SLEEP_SECS=60
MAX_SIZE=4294967296


def get_total_videos_size(file_list):
   retVal=0
   for f in file_list:
      retVal+=os.path.getsize(f)
   print("Total videos file size is "+str(retVal))
   return retVal

def delete_older_files(file_list):
   print("Deleting older files")
   rev_list = sorted(file_list)
   list_len = len(rev_list)
   del_len = list_len/4
   i = 0
   for f in rev_list:
      i+=1
      if(i > del_len):
         break;
      os.remove(f)

while(True):
   try:
      camera = PiCamera()
      camera.framerate = 10
      camera.resolution = (640, 480)
      camera.brightness = 70
      camera.start_preview()
      ist_time=datetime.datetime.now()
      start_time=ist_time.strftime("%Y_%m_%d_%H_%M_%S_%a")
      file_name=CAMERA_HOME+'video_'+start_time+'_'+str(RECORD_TIME)+'secs.h264'
      print("Recording video to file "+file_name)
      camera.start_recording(CAMERA_HOME+'video_'+start_time+'_'+str(RECORD_TIME)+'secs.h264')
      camera.annotate_background = picamera.Color('black')
      for i in range(1,RECORD_TIME):
         ist_time=datetime.datetime.now()
         camera.annotate_text=ist_time.strftime("%d%b%Y_%a_%H:%M:%S")
         camera.wait_recording(1)
      camera.stop_recording()
      camera.stop_preview()
      camera.close()
      file_list=glob.glob(CAMERA_HOME+'video_*.h264')
      if(get_total_videos_size(file_list) > MAX_SIZE):
         delete_older_files(file_list)
   except:
      print("Exception Occured. Sleeping for "+str(SLEEP_SECS)+" secs")
      sleep(SLEEP_SECS)
