#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import serial

ser = serial.Serial ("/dev/ttyAMA0")
ser.baudrate = 11500   

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    palavra = (data.data)
    ser.write(palavra)
    info = ser.read()
    print info

def listener():

    rospy.init_node('massa', anonymous=True)
    rospy.Subscriber("chatter", String, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()

