/*
 * Copyright (c) 2015-2020 Weisong WEN (weisong.wen@berkeley.edu)
 * Distributed under the IVPT Software License
 * Author: weisong wen
 * This is the template for writing a node, using C++ class
 * * *************************************************************************
 * */


#include "actuator.h"
#include "imageSkyDetector.h"

int main(int argc, char** argv)
{
   ros::init(argc,argv,"ivactuator");// node name
   ros::NodeHandle nh;
   actuator* ivnode = new actuator(nh);// dynamic application memory
   ivnode->run();
   ros::spin();
 }
