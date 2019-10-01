//--------------------------------------------------------------------------
// Code generated by the SmartSoft MDSD Toolchain
// The SmartSoft Toolchain has been developed by:
//  
// Service Robotics Research Center
// University of Applied Sciences Ulm
// Prittwitzstr. 10
// 89075 Ulm (Germany)
//
// Information about the SmartSoft MDSD Toolchain is available at:
// www.servicerobotik-ulm.de
//
// This file is generated once. Modify this file to your needs. 
// If you want the toolchain to re-generate this file, please 
// delete it before running the code generator.
//--------------------------------------------------------------------------
#ifndef _INSTANCERECOGNITIONCORE_HH
#define _INSTANCERECOGNITIONCORE_HH
	
#include "aceSmartSoft.hh"
#include <iostream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>

#include <DomainVision/CommVideoImage.hh>
#include <DomainVision/CommDepthImage.hh>

class InstanceRecognitionCore
{
private:

public:
	InstanceRecognitionCore();
	cv::Mat getImageMat(const DomainVision::CommVideoImage input);
	cv::Mat getDepthImageMat(const DomainVision::CommDepthImage input);
};
	
#endif
