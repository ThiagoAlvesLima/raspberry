# Imports for accelerometer
import time
import microstacknode.accelerometer.mma8452q

# Imports to read SPI sensors on ADC chip
import spidev
import os

# Timing import
from datetime import datetime

# Delay time in sec
delay = 1

# Accelerometer initialization
accelerometer = microstacknode.accelerometer.mma8452q.MMA8452Q()
accelerometer.init()

# SPI initialization
spi = spidev.SpiDev()
spi.open(0,0)

# Read data from acceletometer
def readacc ():
	x, y, z = accelerometer.get_xyz()
	return [x, y, z]

# Read data from ADC chip
def readSPI ():
	SensorDictionary = {'temp':0,'light':1,'pot':2}
	for key in SensorDictionary:
		adc = spi.xfer2([1, (8+SensorDictionary[key])<<4,0])
		data = ((adc[1]&3) <<8) + adc[2]
		SensorDictionary[key] = data
# Convert the temperature in list 'values' to Celsius 
	SensorDictionary['temp'] = convert (SensorDictionary[key])
	return SensorDictionary

# Function to convert temperature to celcius
def convert (temp):
	new = ((temp*330)/float(1023))-50
	return new

def printdata ():
	accel_dat = readacc()
	print("Accelerometer data - x:{}, y:{}, z:{}".format(accel_dat[0], accel_dat[1], accel_dat[2]))
	print (readSPI())

def printtime ():
	now = datetime.now()
	print ( '%s/%s/%s %s:%s:%s' % (now.month, now.day, now.year, now.hour, now.minute, now.second) )	

while True:
	printdata()
	printtime()
	time.sleep(delay)