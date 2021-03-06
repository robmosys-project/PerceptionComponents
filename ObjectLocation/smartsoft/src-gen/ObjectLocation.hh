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
// Please do not modify this file. It will be re-generated
// running the code generator.
//--------------------------------------------------------------------------
#ifndef _OBJECTLOCATION_HH
#define _OBJECTLOCATION_HH

#include <map>
#include <iostream>
#include "aceSmartSoft.hh"
#include "smartQueryServerTaskTrigger_T.h"
#include "ObjectLocationCore.hh"

#include "ObjectLocationPortFactoryInterface.hh"
#include "ObjectLocationExtension.hh"

// forward declarations
class ObjectLocationPortFactoryInterface;
class ObjectLocationExtension;

// includes for ObjectLocationROSExtension

// includes for OpcUaBackendComponentGeneratorExtension

// includes for PlainOpcUaObjectLocationExtension
// include plain OPC UA device clients
// include plain OPC UA status servers


// include communication objects
#include <CommPerception/CommInfDetection.hh>
#include <CommPerception/CommInfDetectionACE.hh>
#include <CommPerception/CommObjectProperties.hh>
#include <CommPerception/CommObjectPropertiesACE.hh>
#include <DomainVision/CommRGBDImage.hh>
#include <DomainVision/CommRGBDImageACE.hh>

// include tasks
#include "CaptureSensor.hh"
// include UpcallManagers
#include "RGBDImagePushServiceInUpcallManager.hh"

// include input-handler(s)
// include request-handler(s)
#include "ObjectQueryServiceAnswHandler.hh"

// include handler
#include "CompHandler.hh"


#include "SmartStateChangeHandler.hh"

#define COMP ObjectLocation::instance()

class ObjectLocation : public ObjectLocationCore {
private:
	static ObjectLocation *_objectLocation;
	
	// constructor
	ObjectLocation();
	
	// copy-constructor
	ObjectLocation(const ObjectLocation& cc);
	
	// destructor
	~ObjectLocation() { };
	
	// load parameter from ini file
	void loadParameter(int argc, char* argv[]);
	
	// instantiate comp-handler
	CompHandler compHandler;
	
	// helper method that maps a string-name to an according TaskTriggerSubject
	Smart::TaskTriggerSubject* getInputTaskTriggerFromString(const std::string &client);
	
	// internal map storing the different port-creation factories (that internally map to specific middleware implementations)
	std::map<std::string, ObjectLocationPortFactoryInterface*> portFactoryRegistry;
	
	// internal map storing various extensions of this component class
	std::map<std::string, ObjectLocationExtension*> componentExtensionRegistry;
	
public:
	
	// define tasks
	Smart::TaskTriggerSubject* captureSensorTrigger;
	CaptureSensor *captureSensor;
	
	// define input-ports
	// InputPort RGBDImagePushServiceIn
	Smart::IPushClientPattern<DomainVision::CommRGBDImage> *rGBDImagePushServiceIn;
	Smart::InputTaskTrigger<DomainVision::CommRGBDImage> *rGBDImagePushServiceInInputTaskTrigger;
	RGBDImagePushServiceInUpcallManager *rGBDImagePushServiceInUpcallManager;
	
	// define request-ports
	
	// define input-handler
	
	// define output-ports
	
	// define answer-ports
	Smart::IQueryServerPattern<CommPerception::CommInfDetection, CommPerception::CommObjectProperties> *objectQueryServiceAnsw;
	Smart::QueryServerTaskTrigger<CommPerception::CommInfDetection, CommPerception::CommObjectProperties> *objectQueryServiceAnswInputTaskTrigger;
	
	// define request-handlers
	ObjectQueryServiceAnswHandler *objectQueryServiceAnswHandler;
	
	// definitions of ObjectLocationROSExtension
	
	// definitions of OpcUaBackendComponentGeneratorExtension
	
	// definitions of PlainOpcUaObjectLocationExtension
	
	
	// define default slave ports
	SmartACE::StateSlave *stateSlave;
	SmartStateChangeHandler *stateChangeHandler;
	SmartACE::WiringSlave *wiringSlave;
	
	
	/// this method is used to register different PortFactory classes (one for each supported middleware framework)
	void addPortFactory(const std::string &name, ObjectLocationPortFactoryInterface *portFactory);
	
	SmartACE::SmartComponent* getComponentImpl();
	
	/// this method is used to register different component-extension classes
	void addExtension(ObjectLocationExtension *extension);
	
	/// this method allows to access the registered component-extensions (automatically converting to the actuall implementation type)
	template <typename T>
	T* getExtension(const std::string &name) {
		auto it = componentExtensionRegistry.find(name);
		if(it != componentExtensionRegistry.end()) {
			return dynamic_cast<T*>(it->second);
		}
		return 0;
	}
	
	/// initialize component's internal members
	void init(int argc, char *argv[]);
	
	/// execute the component's infrastructure
	void run();
	
	/// clean-up component's resources
	void fini();
	
	/// call this method to set the overall component into the Alive state (i.e. component is then ready to operate)
	void setStartupFinished();
	
	/// connect all component's client ports
	Smart::StatusCode connectAndStartAllServices();
	
	/// start all assocuated Activities
	void startAllTasks();
	
	/// start all associated timers
	void startAllTimers();
	
	Smart::StatusCode connectRGBDImagePushServiceIn(const std::string &serverName, const std::string &serviceName);

	// return singleton instance
	static ObjectLocation* instance()
	{
		if(_objectLocation == 0) {
			_objectLocation = new ObjectLocation();
		}
		return _objectLocation;
	}
	
	static void deleteInstance() {
		if(_objectLocation != 0) {
			delete _objectLocation;
		}
	}
	
	// connections parameter
	struct connections_struct
	{
		// component struct
		struct component_struct
		{
			// the name of the component
			std::string name;
			std::string initialComponentMode;
			std::string defaultScheduler;
			bool useLogger;
		} component;
		
		//--- task parameter ---
		struct CaptureSensor_struct {
			double minActFreq;
			double maxActFreq;
			std::string trigger;
			// only one of the following two params is 
			// actually used at run-time according 
			// to the system config model
			double periodicActFreq;
			// or
			std::string inPortRef;
			int prescale;
			// scheduling parameters
			std::string scheduler;
			int priority;
			int cpuAffinity;
		} captureSensor;
		
		//--- upcall parameter ---
		
		//--- server port parameter ---
		struct ObjectQueryServiceAnsw_struct {
				std::string serviceName;
				std::string roboticMiddleware;
		} objectQueryServiceAnsw;
	
		//--- client port parameter ---
		struct RGBDImagePushServiceIn_struct {
			bool initialConnect;
			std::string serverName;
			std::string serviceName;
			std::string wiringName;
			long interval;
			std::string roboticMiddleware;
		} rGBDImagePushServiceIn;
		
		// -- parameters for ObjectLocationROSExtension
		
		// -- parameters for OpcUaBackendComponentGeneratorExtension
		
		// -- parameters for PlainOpcUaObjectLocationExtension
		
	} connections;
};
#endif
