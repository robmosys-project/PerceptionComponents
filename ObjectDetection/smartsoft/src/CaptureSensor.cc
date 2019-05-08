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
#include "CaptureSensor.hh"
#include "ObjectDetection.hh"

#include <iostream>

CaptureSensor::CaptureSensor(SmartACE::SmartComponent *comp) 
:	CaptureSensorCore(comp)
{
	std::cout << "constructor CaptureSensor\n";
}
CaptureSensor::~CaptureSensor() 
{
	std::cout << "destructor CaptureSensor\n";
}


void CaptureSensor::on_RGBDImagePushServiceIn(const DomainVision::CommRGBDImage &input)
{
	std::cout << "Hello from on_RGBDImagePushServiceIn " << std::endl;
	// upcall triggered from InputPort RGBDImagePushServiceIn
	// - use a local mutex here, because this upcal is called asynchroneously from outside of this task
	// - do not use longer blocking calls here since this upcall blocks the InputPort RGBDImagePushServiceIn
	// - if you need to implement a long-running procedure, do so within the on_execute() method and in
	//   there, use the method rGBDImagePushServiceInGetUpdate(input) to get a copy of the input object
	this->rGBDImagePushServiceInStatus = Smart::SMART_OK;
	this->rGBDImagePushServiceInObject = input;

}

int CaptureSensor::on_entry()
{
	// do initialization procedures here, which are called once, each time the task is started
	// it is possible to return != 0 (e.g. when initialization fails) then the task is not executed further
	return 0;
}
int CaptureSensor::on_execute()
{
	// this method is called from an outside loop,
	// hence, NEVER use an infinite loop (like "while(1)") here inside!!!
	// also do not use blocking calls which do not result from smartsoft kernel
	
	// to get the incoming data, use this methods:
	Smart::StatusCode status;
	DomainVision::CommRGBDImage rGBDImagePushServiceInObject;
	status = this->rGBDImagePushServiceInGetUpdate(rGBDImagePushServiceInObject);
	if(status != Smart::SMART_OK) {
//		std::cerr << status << std::endl;
		// return 0;
	} else {
//		std::cout << "received: " << rGBDImagePushServiceInObject << std::endl;
		DomainVision::CommVideoImage colorImage = rGBDImagePushServiceInObject.getColor_image();
		std::vector<unsigned char> image_date;
		image_date = colorImage.getDataRef();
		std::cout << "[Image Task] on_execute data "<< image_date.size()<< std::endl;


	}

//	std::cout << "Hello from CaptureSensor on_execute" << std::endl;
	//Save image


	// it is possible to return != 0 (e.g. when the task detects errors), then the outer loop breaks and the task stops
	return 0;
}
int CaptureSensor::on_exit()
{
	// use this method to clean-up resources which are initialized in on_entry() and needs to be freed before the on_execute() can be called again
	return 0;
}
