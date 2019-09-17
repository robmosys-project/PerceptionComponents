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
#ifndef _SHAPERECOGNITIONCORE_HH
#define _SHAPERECOGNITIONCORE_HH
	
#include "aceSmartSoft.hh"
#include <iostream>

#include <CommBasicObjects/CommPosition3d.hh>

class ShapeRecognitionCore
{
private:

public:
	std::vector<CommBasicObjects::CommPosition3d> sphere_list;
	std::vector<CommBasicObjects::CommPosition3d> cube_list;
	std::vector<CommBasicObjects::CommPosition3d> cylinder_list;

	ShapeRecognitionCore();
};
	
#endif