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
#include "ObjectQueryServiceAnswHandler.hh"
#include "ObjectLocation.hh"

ObjectQueryServiceAnswHandler::ObjectQueryServiceAnswHandler(IQueryServer *server)
:	ObjectQueryServiceAnswHandlerCore(server)
{
	
}


void ObjectQueryServiceAnswHandler::handleQuery(const Smart::QueryIdPtr &id, const CommPerception::CommInfDetection& request) 
{
	std::cout<< "[ObjectQueryService] Service Call"<<std::endl;

	CommPerception::CommObjectProperties answer;
	std::vector<CommPerception::ObjectCore> obj_list;
	CommPerception::ObjectCore obj;
	CommBasicObjects::CommPose3d pose;
	for (int i = 0; i < obj_pos_list.size(); i++)
	{
		pose.setPosition(COMP->obj_pos_list[0]);
		obj.setPose(pose);
		obj_list.push_back(obj);
	}
	answer.setObjects(obj_list);
	this->server->answer(id, answer);
}