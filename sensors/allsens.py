'''Runs accelerometer and SPI sensors'''

# SPI+Accel reader
# By Patrick Suddeth

# Import necessary modules

import time
import microstacknode.accelerometer.mma8452q as ACCELMODULE
import spidev
import os

# Set delay interval and SPI/ADC sensor locations
# This is the only part of the code that should need to be edited to add sensors

 # sensor_pins corresponds to which sensor input pins on the ADC chip are connected to your sensors
 # sensor_names must be equal in element number to sensor_channels
 # Ideally, you'd use this to give names to each sensor
 # this will be used in the output print functions

delay = 1

sensor_pins = [1, 2, 3]
sensor_names = ["Light", "Heat", "Pot"]


# Initialize sensors
acceler = ACCELMODULE.MMA8452Q()
acceler.init()
spi = spidev.SpiDev()
spi.open(0,0)

num_sensors = len(sensor_pins)
sensor_channels = []
for s in range(0, num_sensors):
	sensor_channels.append(sensor_pins[s]-1)

# Data read functions
def GetAccel():
	x, y, z = acceler.get_xyz()
	xyz = [x, y, z]
	return xyz

def GetSPI(channel):
	adc = spi.xfer2([1, (8+channel)<<4,0])
	data = ((adc[1]&3) <<8) + adc[2]
	return data


# Print Functions
def AccelPrint(data):
	print("Accel data - x:{}, y:{}, z:{}".format(accel_dat[0], accel_dat[1], accel_dat[2]))

def SensorPrint(sensor, data):
	print("{} Sensor Value: {}".format(sensor, data))



# Main loop

while True:

	for i in range (0, num_sensors):
		sens_data = GetSPI(sensor_channels[i])
		SensorPrint(sensor_names[i], sens_data)

	accel_dat = GetAccel()
	AccelPrint(accel_dat)

	time.sleep(delay)
