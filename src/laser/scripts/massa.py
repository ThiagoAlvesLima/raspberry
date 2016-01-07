#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import serial

ser = serial.Serial ("/dev/ttyAMA0", 115200, timeout = 1)

def listener():

    rospy.init_node('massa', anonymous=True)  # this is a comment
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        num = str(round(5.987625123,2))
    	ser.write("!"+num+'/r')
    	data = ser.read(7)
	#if (data == 'ok/r'):
		#print data
        print data  
	rate.sleep()

if __name__ == '__main__':
    listener()


