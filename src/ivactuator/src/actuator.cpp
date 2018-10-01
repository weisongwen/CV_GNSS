/*
 * Copyright (c) 2015-2020 Weisong WEN (weisong.wen@berkeley.edu)
 * Distributed under the IVPT Software License
 * Author: weisong wen
 * This is the template for writing a node, using C++ class
 * * *************************************************************************
 * */

#include "actuator.h"

/**
 *run()
 *constructor function, usually used for initialize some variables.
 */
actuator::actuator(ros::NodeHandle handle)
{
    m_handle = handle;
    count = 0;
    std::cout<<"this is the constructor function, this function will only run when the a class is created."<<std::endl;
    vx = 0;
    vy = 0;
    vz = 0;
    preTime =0;
    sx = 0;
    sy = 0;
    sz = 0;
    anglex = 0;
    angley = 0;
    anglez = 0;
}

/**
 *run()
 */
void actuator::run()
{
    imu_pub = m_handle.advertise<sensor_msgs::Imu>("/imu2",1000);
    trans_pub = m_handle.advertise<geometry_msgs::Point>("/translation",1000);
    ang_pub = m_handle.advertise<geometry_msgs::Point>("/angle",1000);
    imu_sub = m_handle.subscribe("/imu", 500, &actuator::imu_callback, this); // callback for /imu topic
    boost::thread thread(boost::bind(&actuator::callback_sendthread, this) );  
    thread.detach();
    int run_rate = 20; //50ms
    ros::Rate rate(run_rate);
    while(ros::ok())
    {
        ros::spinOnce();
        rate.sleep();
    }
}

/**
 *callback_sendthread()
 */
void actuator::callback_sendthread()
{
    while(1){
        function1();//
        usleep(5000*1000); // wait 500ms
    }
}

/**
 *function1()
 *simple function
 */
void actuator::function1()
{
    count++;
    // std::cout<<"this is the function1 function......       Count = "<<count<<std::endl;
}

/**
 *imu_callback()
 */
void actuator::imu_callback(const sensor_msgs::ImuConstPtr& imu_msg)
{
    /*
    look at the structure of sensor_msgs/Imu using: rosmsg show sensor_msgs/Imu
    std_msgs/Header header
      uint32 seq
      time stamp
      string frame_id
    geometry_msgs/Quaternion orientation
      float64 x
      float64 y
      float64 z
      float64 w
    float64[9] orientation_covariance
    geometry_msgs/Vector3 angular_velocity
      float64 x
      float64 y
      float64 z
    float64[9] angular_velocity_covariance
    geometry_msgs/Vector3 linear_acceleration
      float64 x
      float64 y
      float64 z
    float64[9] linear_acceleration_covariance
    */
    // std::cout<<"this is the imu_callback function......"<<std::endl;
    sensor_msgs::Imu received_imu;
    received_imu = *imu_msg;
    std::cout<<"x axis acceleration-> "<<received_imu.linear_acceleration.x<<std::endl;
    imu_pub.publish(received_imu); // publish the new imu message using a new topic.

    //calculate translation
    double cur_time =ros::Time::now().toSec();
    if(preTime == 0) preTime = ros::Time::now().toSec();
    double delt_time = cur_time - preTime;
    std::cout<<"delta time between tw topic-> "<<delt_time<<std::endl;
    preTime = cur_time;

    received_imu.linear_acceleration.z = received_imu.linear_acceleration.z - 9.80;
    vx = vx + received_imu.linear_acceleration.x * delt_time; // asume acc do not change between two topic
    vy = vy + received_imu.linear_acceleration.y * delt_time; 
    vz = vz + received_imu.linear_acceleration.z * delt_time; 
   
   //calculate the angle in the x,y,z direction
    anglex = anglex + received_imu.angular_velocity.x * 180/3.1415926*delt_time;
    angley = angley + received_imu.angular_velocity.y* 180/3.1415926*delt_time;
    anglez = anglez + received_imu.angular_velocity.z* 180/3.1415926*delt_time;

    std::cout<<"anglex -> "<<anglex<<"  angley -> "<<angley<<"  anglez -> "<<anglez<<std::endl;

    geometry_msgs::Point angle;
    angle.x = anglex;
    angle.y = angley;
    angle.z = anglez;
    // publish angle messages
    ang_pub.publish(angle);
    ////////////////////

    // calculate weiyi
    sx = sx + vx * delt_time + 1/2 * received_imu.linear_acceleration.x * (delt_time * delt_time);
    sy = sy + vy * delt_time + 1/2 * received_imu.linear_acceleration.y * (delt_time * delt_time);
    sz = sz + vz * delt_time + 1/2 * received_imu.linear_acceleration.z * (delt_time * delt_time);

    std::cout<<"sx -> "<<sx<<"  sy -> "<<sy<<"  sz -> "<<sz<<std::endl;
    
    geometry_msgs::Point translation;
    translation.x = sx;
    translation.y = sy;
    translation.z = sz;

    trans_pub.publish(translation);

}
