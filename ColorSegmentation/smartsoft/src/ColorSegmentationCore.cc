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
#include "ColorSegmentationCore.hh"

// constructor
ColorSegmentationCore::ColorSegmentationCore()
{
	newestImageStatus = Smart::SMART_NODATA;

//	std::cout << "constructor ColorSegmentationCore\n";
}
void ColorSegmentationCore::setVideoImage(DomainVision::CommVideoImage input, Smart::StatusCode status)
{
	newestImage = input;
	newestImageStatus = status;
}

DomainVision::CommVideoImage ColorSegmentationCore::getVideoImage()
{
	return this->newestImage ;
}

cv::Mat ColorSegmentationCore::getMat(const DomainVision::CommVideoImage input){

	std::cout << "[ColorSegmentationCore] get_Mat\n";
	const unsigned char *color_frame;

	color_frame = input.get_data();

	const int w = input.get_width();
	const int h = input.get_height();

	cv::Mat image(cv::Size(w, h), CV_8UC3, (void*)input.get_data());


	return image;
}



CommPerception::Color ColorSegmentationCore::getColor(CommPerception::Colors color_name){

	CommPerception::Color c;
	c.setName(color_name);
	CommPerception::HSVSpace min_range, max_range;

	switch(color_name) {
	    case CommPerception::Colors::RED : // TODO add other (170, 120, 70) - (180, 255, 255)
	    	min_range.setH(0).setS(120).setV(70);
	    	max_range.setH(10).setS(255).setV(255);
	        break;
	    case CommPerception::Colors::BLUE : //TODO
	    	min_range.setH(0).setS(0).setV(115);
	    	max_range.setH(0).setS(0).setV(178);
	        break;
	    case CommPerception::Colors::WHITE : //TODO
	    	min_range.setH(0).setS(0).setV(115);
	    	max_range.setH(0).setS(0).setV(178);
	        break;
	    case CommPerception::Colors::GRAY :
	    	min_range.setH(0).setS(0).setV(90);
	    	max_range.setH(180).setS(10).setV(178);
	        break;
	}

	c.setMin_range(min_range);
	c.setMax_range(max_range);

	return c;
}


cv::Mat ColorSegmentationCore::segmentation(cv::Mat img, CommPerception::Color color){
	std::cout << "[ColorSegmentationCore] Segmentation node\n";

    //Converting image from BGR to HSV color space.
    cv::Mat mask1,mask2,hsv;
    cv::cvtColor(img, hsv, cv::COLOR_BGR2HSV);

    // Creating masks to detect the upper and lower color.
    CommPerception::HSVSpace min_range, max_range;
    min_range = color.getMin_range();
    max_range = color.getMax_range();
    cv::inRange(hsv, cv::Scalar(min_range.getH(), min_range.getS(), min_range.getV()), cv::Scalar(max_range.getH(), max_range.getS(), max_range.getV()), mask1);
//	std::cout<< "[ColorSegmentationCore-segmentation] HSVSpace"<<\
//			", min_range h:"<<min_range.getH()<<", min_range s:"<<min_range.getS()<<", min_range v:"<<min_range.getV()<<std::endl<<\
//			", max_range h:"<<max_range.getH()<<", max_range s:"<<max_range.getS()<<", max_range v:"<<max_range.getV()<<std::endl;
	// Generating the final mask to detect color
	//mask1 = mask1+mask2;

    return mask1;
}

cv::Point ColorSegmentationCore::countour(cv::Mat mask){
	std::cout << "[ColorSegmentationCore] Countour\n";
    int largest_area=0;
    int largest_contour_index=0;

    std::vector< std::vector<cv::Point> > contours; // Vector for storing contour
    std::vector<cv::Vec4i> hierarchy;

    cv::findContours( mask, contours, hierarchy,CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE ); // Find the contours in the image

    for( int i = 0; i< contours.size(); i++ ) {// iterate through each contour.
        double a=contourArea( contours[i],false);  //  Find the area of contour
        if(a>largest_area){
            largest_area=a;
            largest_contour_index=i;                //Store the index of largest contour
            //bounding_rect=boundingRect(contours[i]); // Find the bounding rectangle for biggest contour
        }
    }

	/// Get the center
	cv::Moments mu;
	cv::Point mc;
	mu = moments( contours[largest_contour_index], false );
	mc = cv::Point( mu.m10/mu.m00 , mu.m01/mu.m00 );

//	std::cout<<"[CaptureSensor] Center biggest blob : "<<mc.x<<", "<<mc.y<<std::endl;
//
//    cv::Mat matImage = cv::Mat::zeros( mask.size(), CV_8UC1 );
//    cv::drawContours( matImage, contours, largest_contour_index, cv::Scalar(255), CV_FILLED, 8, hierarchy ); // Draw the largest contour using previously stored index.
//	 cv::circle( matImage, mc, 4, cv::Scalar(255), -1, 8, 0 );
//	cv::imshow("mask_contour", matImage);
//	cv::waitKey(10);

    return mc;
}
