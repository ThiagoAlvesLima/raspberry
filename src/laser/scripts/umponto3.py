#!/usr/bin/env python
# coding=utf-8

import rospy
from std_msgs.msg import String
import serial
import sensor_msgs.msg
import time

ser = serial.Serial ("/dev/ttyAMA0", 115200, timeout = 1)

def callback(data):
    
    # Imprime a distância na tela.
    #rospy.loginfo(rospy.get_caller_id() + "Distância: %f", data.ranges[386])
     
    # Aproxima para duas casas decimais, e converte para string. 
    dist = str(round(data.ranges[384],2))
    print dist
    # Loop que envia a distância até receber a confirmação.    
    #while True:
    if len(dist) == 3:                        
    	ser.write("!"+dist+"0"+'\r')
    else:
	ser.write("!"+dist+'\r')
    	#data = ser.read(3)
        #print data
    	#if (data=='ok\r'):
		#break
	#time.sleep(0.01) 	

def listener():

    rospy.init_node('ponto', anonymous=True)
    rospy.Subscriber("scan", sensor_msgs.msg.LaserScan, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()


