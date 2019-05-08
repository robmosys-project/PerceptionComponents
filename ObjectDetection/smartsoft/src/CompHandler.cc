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
#include "CompHandler.hh"
#include "ObjectDetection.hh"

#include <iostream>

// include communication objects


void CompHandler::onStartup() 
{
	std::cout << "startup - put your startupCode in CompHandler::onStartup()!!!\n";

	Smart::StatusCode status;
	std::cout << "startup - begin /connectAndStartAllServices!!!\n";
	// Start all services. If you need manual control, use the content of this function to
	// connect and start each service individually, e.g:
	// COMP->connectMyPortName("SmartExampleComponent", "examplePort");
	status = COMP->connectAndStartAllServices();
	std::cout << "startup - connectAndStartAllServices!!!\n";
	// Start all tasks. If you need manual control, use the content of this function to
	// start each task individually.
	COMP->startAllTasks();
	std::cout << "startup - startAllTasks!!!\n";
	// Start all timers. If you need manual control, use the content of this function to
	// start each timer individually.
	COMP->startAllTimers();
	std::cout << "startup - startAllTimers!!!\n";
	// Notify the component that setup/initialization is finished.
	// You may move this function to any other place.
	COMP->setStartupFinished(); 
	std::cout << "startup - setStartupFinished!!!\n";
}

void CompHandler::onShutdown() 
{
	std::cout << "shutdown - put your cleanup code in CompHandler::onShutdown()!!!\n";
	
}
