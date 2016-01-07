#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <iomanip> 

//Callback function, executed everytime a new message arrives

void LaserReceived (const sensor_msgs::LaserScan& msg) {
	ROS_INFO_STREAM(std::setprecision(2) << std::fixed 
	<< " Posicao = " << msg.ranges[386]);
}

int main (int argc, char **argv) {

	// Initializes the ROS system.
	ros::init (argc, argv, "um_ponto");

	// Establish this program as a ROS node. 
	ros::NodeHandle nh; 

	// Create a subscriber object
	ros::Subscriber sub = nh.subscribe ("scan", 1000, &LaserReceived);

	// Let ROS take over
	ros::spin();

}
