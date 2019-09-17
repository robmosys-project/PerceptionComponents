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
#include "ShapeRecognition.hh"

#include <iostream>

CaptureSensor::CaptureSensor(SmartACE::SmartComponent *comp) 
:	CaptureSensorCore(comp)//, viewer("Cloud Viewer")
{
	 _crop_width = 2.0;
	 _crop_depth = 2.0;
	 _crop_min_z = -2.0;
	 _crop_max_z = 2.0;
	 _leaf_size = 0.008;

	std::cout << "constructor CaptureSensor\n";


}
CaptureSensor::~CaptureSensor() 
{
	std::cout << "destructor CaptureSensor\n";
}

void CaptureSensor::on_PointCloudPushServiceIn(const DomainVision::Comm3dPointCloud &input)
{

    PointCloud cloud_in;

    for(int i=0;i<input.getPointsSize();i++ ){
    	Point pt;
    	double px, py, pz;
    	input.get_point(i, px, py, pz);
    	pt.x = px;
    	pt.y = py;
    	pt.z = pz;
    	cloud_in.push_back(pt);
    }
	cloud_helper = cloud_in;

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

	//pcl::fromPCLPointCloud2(*cloud_in, *cloud_helper);
	PointCloud transformed_cloud, cloud_process; // transformed cloud
	PointCloud::Ptr filter_cloud (new PointCloud), filter1_cloud (new PointCloud), filter2_cloud (new PointCloud), objects_cloud (new PointCloud);

	// Step2: Crop table, robot and walls
	filter_passthrough(cloud_helper, filter1_cloud);
	filter_removeoutliers(filter1_cloud, filter_cloud);
	filter_voxel(filter_cloud, filter2_cloud);

	//viewer.showCloud (filter2_cloud);

	// Step3: Planar extraction and get the objects in different clusters
	extract_planar(filter2_cloud, objects_cloud);
	std::vector<pcl::PointCloud<pcl::PointXYZ>::Ptr> obj_clusters = get_clusters(objects_cloud);


	// Step4: Shape recognition
   sphere_list.clear();
   cube_list.clear();
   cylinder_list.clear();
	for (std::size_t i = 0; i < obj_clusters.size(); ++i)
	{
		if (obj_clusters[i]->size() < 13)
		{
			//ROS_WARN("Cluster with less than 13 points!");
			continue;
		}

		std::string text_shape="";
		int form_id = quadratic_matcher(obj_clusters[i]);
		if (form_id == 1){
			text_shape="Sphere";
			//	ROS_INFO_STREAM("Obj "<<i+1<<" : Sphere");
		}
		if (form_id == 2){
		  text_shape="Box";
			//	ROS_INFO_STREAM("Obj "<<i+1<<" : Cube");
		}
		if (form_id == 3){
		  text_shape="Cylinder";
		//  ROS_INFO_STREAM("Obj "<<i+1<<" : Cylinder");
		}
		if( i <5)
		std::cout<< "Obj "<<i+1<<": "<<text_shape<<std::endl;
	}
	COMP->sphere_list = sphere_list;
	COMP->cube_list = cube_list;
	COMP->cylinder_list = cylinder_list;

	// it is possible to return != 0 (e.g. when the task detects errors), then the outer loop breaks and the task stops
	return 0;
}
int CaptureSensor::on_exit()
{
	// use this method to clean-up resources which are initialized in on_entry() and needs to be freed before the on_execute() can be called again
	return 0;
}

void CaptureSensor::filter_removeoutliers(PointCloud::Ptr cloud_in, PointCloud::Ptr cloud_out) {
	pcl::StatisticalOutlierRemoval<pcl::PointXYZ> sor;
	  sor.setInputCloud (cloud_in);
	  sor.setMeanK (50);
	  sor.setStddevMulThresh (0.3);//1.0
	  sor.filter (*cloud_out);
}

void CaptureSensor::filter_passthrough(PointCloud cloud_in, PointCloud::Ptr cloud_out) {
    PointCloud::Ptr cloud_ptr  = cloud_in.makeShared();
    pcl::PassThrough<pcl::PointXYZ> pass;

    // filter z
    pass.setInputCloud (cloud_ptr);
    pass.setFilterFieldName ("z");
    pass.setFilterLimits (_crop_min_z, _crop_max_z);
    pass.filter (*cloud_out);

    // //     // x: depth
    pass.setInputCloud (cloud_out);
    pass.setFilterFieldName ("x");
    pass.setFilterLimits (-_crop_depth, _crop_depth);
    pass.filter (*cloud_out);
    // y: width
    pass.setInputCloud (cloud_out);
    pass.setFilterFieldName ("y");
    pass.setFilterLimits (-_crop_width, _crop_width);
    pass.filter (*cloud_out);


    std::cout<<"[filter_passthrough] Initial points " << cloud_in.points.size() << " - Final points  " << cloud_out->points.size()<<std::endl;
}

void CaptureSensor::filter_voxel(PointCloud::Ptr  cloud_in, PointCloud::Ptr cloud_out) {
	pcl::VoxelGrid<pcl::PointXYZ> sor;
	sor.setInputCloud(cloud_in);
	sor.setLeafSize(_leaf_size, _leaf_size, _leaf_size);
	sor.filter(*cloud_out);

	std::cout<<"[filter_voxel] Initial points " << cloud_in->points.size() << " - Final points  " << cloud_out->points.size()<<std::endl;
}


void CaptureSensor::extract_planar(PointCloud::Ptr  cloud_in, PointCloud::Ptr cloud_out) {

  pcl::SACSegmentation<pcl::PointXYZ> seg;
  pcl::PointIndices::Ptr inliers(new pcl::PointIndices);
  pcl::ModelCoefficients::Ptr coefficients(new pcl::ModelCoefficients);
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloudObj(new pcl::PointCloud<pcl::PointXYZ>());

  seg.setOptimizeCoefficients(true);
  seg.setModelType(pcl::SACMODEL_PLANE);
  seg.setMethodType(pcl::SAC_RANSAC);
  seg.setMaxIterations(100);
  seg.setDistanceThreshold(0.02);

  // int i = 0, nr_points = static_cast<int>(cloud_after_z->points.size());

  // while (i < 5) // 0.3 * nr_points
  // {
    // Segment the largest planar component from the remaining cloud
    seg.setInputCloud(cloud_in);
    seg.segment(*inliers, *coefficients);
    if (inliers->indices.size() == 0)
    {
    //  ROS_WARN("Could not estimate a planar model for the given dataset.");
      // break;
      return;
    }
    else
    {
     // ROS_DEBUG_STREAM_THROTTLE(1, "Segmentation: " << inliers->indices.size());
    }

    // Extract the planar inliers from the input cloud
    pcl::ExtractIndices<pcl::PointXYZ> extract;
    extract.setInputCloud(cloud_in);
    extract.setIndices(inliers);
    extract.setNegative(true);

    // Get the points associated with objects
    extract.filter(*cloud_out);
   // ROS_DEBUG_STREAM_THROTTLE(
     //   1, "PointCloud representing the planar component: " << cloud_out->points.size () << " data points." );

  //   ++i;
  // }

   std::cout<<"[extract_planar] Initial points " << cloud_in->points.size() << " - Final points  " << cloud_out->points.size()<< std::endl;
}

std::vector<pcl::PointCloud<pcl::PointXYZ>::Ptr> CaptureSensor::get_clusters(PointCloud::Ptr  cloud_in) {
  // Creating the KdTree object for the search method of the extraction
  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZ>);
  tree->setInputCloud(cloud_in);

  std::vector<pcl::PointIndices> cluster_indices;
  pcl::EuclideanClusterExtraction<pcl::PointXYZ> ec;
  ec.setClusterTolerance(0.02); // 2cm
  ec.setMinClusterSize(15);
  ec.setMaxClusterSize(25000);
  ec.setSearchMethod(tree);
  ec.setInputCloud(cloud_in);
  ec.extract(cluster_indices);

 // ROS_INFO_STREAM("[get_clusters] " << cluster_indices.size() << " detected  ");

  // Put clusters in a pointcloud vector
  std::vector<pcl::PointCloud<pcl::PointXYZ>::Ptr> objCluster(cluster_indices.size());
  for (std::size_t i = 0; i < cluster_indices.size(); ++i)
  {
    objCluster[i].reset(new pcl::PointCloud<pcl::PointXYZ>());
    objCluster[i]->points.reserve(cluster_indices[i].indices.size());
    // double sx=0, sy=0, sz=0;
    for (std::vector<int>::const_iterator pit = cluster_indices[i].indices.begin();
        pit != cluster_indices[i].indices.end(); ++pit)
    {
      objCluster[i]->points.push_back(cloud_in->points[*pit]);
      // sx+=cloud_in->points[*pit].x;
      // sy+=cloud_in->points[*pit].y;
      // sz+=cloud_in->points[*pit].z;
      //TODO Calcular pose
    }
    // int nsize=objCluster[i]->points.size();
    objCluster[i]->width = objCluster[i]->points.size();
    objCluster[i]->height = 1;
    objCluster[i]->is_dense = true;
    objCluster[i]->header =  cloud_in->header;
    //ROS_DEBUG_STREAM("Cluster " << i+1 << " with " << objCluster[i]->points.size());
   // ROS_INFO_STREAM("Pose " << sx/nsize << ", " << sy/nsize << ", "<< sz/nsize );
  }

  return objCluster;
}


int CaptureSensor::quadratic_form_matcher(const ope::SQParameters& param)
{
		  // using namespace Eigen;
	//ROS_INFO("Pose detected x=%.3f, y=%.3f, z=%.3f]", param.px, param.py, -param.pz);
	float eps = 0.4;
	//quadraticSphereMatcher
	if (std::abs(param.e1 - 1.0) < eps && std::abs(param.e2 - 1.0) < eps)
	{
		// Calc diameter from parameters
		double diameter = 2.0/3.0 * (param.a1 + param.a3 + param.a3);
	//	ROS_INFO("Sphere detected (diameter = %.3f)", diameter);
   // ROS_INFO_STREAM(param);
		return 1;
	}
	//quadraticCuboidMatcher
	if (std::abs(param.e1 - 0.1) < eps && std::abs(param.e2 - 0.1) < eps)
	{
		// Calc dimensions from parameters
		double depth = 2 * param.a1, width = 2 * param.a2, height = 2 * param.a3;
	//	ROS_INFO("Cube detected [depth=%.3f, widh=%.3f, height=%.3f]", depth, width, height);
   // ROS_INFO_STREAM(param);
		return 2;
	}

	//quadraticCylinderMatcher

	// Calc height and radius from parameters
	double height = 2 * param.a3;
	double radius = param.a1 + param.a2;
//	ROS_INFO("Cylinder detected [height=%.3f, radius=%.3f]", height, radius);
  //ROS_INFO_STREAM(param);

	return 3;

}


int CaptureSensor::quadratic_matcher(pcl::PointCloud<pcl::PointXYZ>::Ptr& obj)
{
	  ope::SQFitting sqf;
	  ope::SQParameters initParams, bestParams;
	  sqf.estimateInitialParameters( *obj, initParams );

	  int NUM_SCALES = 4;
	  double errorThreshold = 2.0;
	  double errorDiff = 1000.0;
	  double errorValue = 0;
	  double prevErrorValue = 0;

	  for (int j = 0; j < NUM_SCALES && errorDiff >= errorThreshold; j++) {

	    sqf.performShapeFitting( *obj, initParams, bestParams );

	    errorValue = sqf.qualityOfFit(*obj, bestParams);
	    errorDiff = abs(prevErrorValue - errorValue);
	    prevErrorValue = errorValue;

	    bestParams.copyTo(initParams);
	   //initParams.min.iterations = settings.minIterations;
	    initParams.min.a1.type = ope::BOUNDED;
	    initParams.min.a1.lowerBound = 0.020f;
	    initParams.min.a1.upperBound = initParams.a1 + 0.015f;
	    initParams.a1 = 0.05f;

	    initParams.min.a2.type = ope::BOUNDED;
	    initParams.min.a2.lowerBound = 0.020f;
	    initParams.min.a2.upperBound = initParams.a2 + 0.015f;
	    initParams.a2 = 0.05f;

	    initParams.min.a3.type = ope::BOUNDED;
	    initParams.min.a3.lowerBound = 0.020f;
	    initParams.min.a3.upperBound = initParams.a3 + 0.015f;
	    initParams.a3 = 0.05f;

	    initParams.min.e1.type = ope::BOUNDED;
	    initParams.min.e1.lowerBound = 0.1f;
	    initParams.min.e1.upperBound = 1.0f;
	    initParams.e1 = 1.0f;

	    initParams.min.e2.type = ope::BOUNDED;
	    initParams.min.e2.lowerBound = 0.1f;
	    initParams.min.e2.upperBound = 1.0f;
	    initParams.e2 = 1.0f;

	    initParams.min.phi.type = ope::UNLIMITED;
	    initParams.min.theta.type = ope::UNLIMITED;
	    initParams.min.psi.type = ope::UNLIMITED;
	    initParams.min.phi.value = 1.0f;
	    initParams.min.theta.value = 1.0f;
	    initParams.min.psi.value = 1.0f;

	    initParams.min.px.type = ope::UNLIMITED;
	    initParams.min.py.type = ope::UNLIMITED;
	    initParams.min.pz.type = ope::UNLIMITED;

	    // if (settings.allowTapering) {
	      initParams.min.kx.type = ope::BOUNDED;
	      initParams.min.kx.lowerBound = -0.25f;
	      initParams.min.kx.upperBound = 0.25f;
	      initParams.min.kx.value = 0.0f;
	      initParams.kx = 1.0f;

	      initParams.min.ky.type = ope::BOUNDED;
	      initParams.min.ky.lowerBound = -0.25f;
	      initParams.min.ky.upperBound = 0.25;
	      initParams.min.ky.value = 0.0f;
	      initParams.ky = 1.0f;

	    // } else {
	    //   initParams.min.kx.type = UNCHANGED;
	    //   initParams.min.kx.value = 0.0f;
	    //   initParams.min.ky.type = UNCHANGED;
	    //   initParams.min.ky.value = 0.0f;

	    // }

	  }


	int id_form = quadratic_form_matcher(bestParams);

	CommBasicObjects::CommPosition3d pt;
	pt.set_x(bestParams.px);
	pt.set_y(bestParams.py);
	pt.set_z(bestParams.pz);
	std::cout<<"px"<<bestParams.px<<", py"<<bestParams.py<<", pz"<<bestParams.pz<<std::endl;

	if (id_form == 1) sphere_list.push_back(pt);
	if (id_form == 2) cube_list.push_back(pt);
	if (id_form == 3) cylinder_list.push_back(pt);


  // cv::Point center = point3d_to_point2d(pt);
  //cv::Rect rect;
  // if (id_form == 1) // Sphere
  // {
  //     double diameter = 2.0/3.0 * (bestParams.a1 + bestParams.a3 + bestParams.a3);
  //     rect.x = center.x- diameter/2;  rect.y = center.y- diameter/2;
  //     rect.width = diameter;  rect.height = diameter;
  // }
  // if (id_form == 2 || id_form == 3) // Cube or Cylinder
  // {
  //     double height = 2 * bestParams.a3;   double diameter = bestParams.a1 + bestParams.a2;//IT said radius...
  //     rect.x = center.x - diameter/2;  rect.y = center.y - height/2;
  //     rect.width = diameter;  rect.height = diameter;
  // }
	// Print parameters
	//ROS_DEBUG_STREAM(bestParams);
	return id_form;
}
