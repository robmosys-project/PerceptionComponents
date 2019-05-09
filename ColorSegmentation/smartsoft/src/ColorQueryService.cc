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
#include "ColorQueryService.hh"
#include "ColorSegmentation.hh"

ColorQueryService::ColorQueryService(Smart::IQueryServerPattern<CommObjectRecognitionObjects::CommColorDetection, CommObjectRecognitionObjects::CommPoint2d, SmartACE::QueryId>* server)
:	ColorQueryServiceCore(server)
{
	
}

ColorQueryService::~ColorQueryService()
{
	
}


void ColorQueryService::handleQuery(const SmartACE::QueryId &id, const CommObjectRecognitionObjects::CommColorDetection& request) 
{
	//TODO state of iamge.. if different of okey do nothing
	CommObjectRecognitionObjects::CommPoint2d answer;
	
	std::cout<< "ColorQueryService roi width:"<<request.getRoi().getWidth() <<", height:"<<request.getRoi().getHeight()<<std::endl;
//
	cv::Mat image = COMP->get_Mat(COMP->newestImage);

//	cv::Mat subImg = image(cv::Range(request.getRoi().getPoint().getX() , request.getRoi().getWidth()),
//	cv::Range(request.getRoi().getPoint().getY(), request.getRoi().getHeight()));   //TODO

	cv::Mat mask = COMP->Segmentation(image);
	cv::Point p_object = COMP->Countour(mask);

	answer.setX(p_object.x).setY(p_object.y);
	
	this->server->answer(id, answer);
}
