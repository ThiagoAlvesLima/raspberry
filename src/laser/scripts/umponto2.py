#!/usr/bin/env python
# coding=utf-8

import rospy
from std_msgs.msg import String
import serial
import sensor_msgs.msg

ser = serial.Serial ("/dev/ttyAMA0")
ser.baudrate = 115200

def callback(data):
        # Imprime a distância na tela.
    rospy.loginfo(rospy.get_caller_id() + "Distância: %f", data.ranges[386])	

def listener():

    rospy.init_node('ponto', anonymous=True)
    rospy.Subscriber("scan", sensor_msgs.msg.LaserScan, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()


