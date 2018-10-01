#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include "imageSkyDetector.h"


static const std::string OPENCV_WINDOW = "Image window";
static const std::string SKYVIEW = "SKYVIEW";
using namespace cv;
class ImageConverter
{
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;
  // int threshold_value ;
  // int threshold_type;
  // int const max_BINARY_value;
 // cv::Mat src, src_gray, dst;

public:
  ImageConverter()
    : it_(nh_)
  {
    // Subscribe to input video feed and publish output video feed
    image_sub_ = it_.subscribe("/camera_array/cam0/image_raw", 1,&ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("/image_converter/output_video", 1);
    // threshold_value =0;
    // threshold_type=3;
    // max_BINARY_value=255;


    // cv::namedWindow(OPENCV_WINDOW);
    cv::namedWindow(SKYVIEW);
    
    sky_detector::SkyAreaDetector detector;
    std::cout<<"\n start .."<<std::endl;
    detector.detect("src/ros_class/ivactuator/data/skyview.png", "src/ros_class/ivactuator/data/skyview2.png");
    std::cout<<"\n finish .."<<std::endl;

    // readImage();
  }

  ~ImageConverter()
  {
    cv::destroyWindow(OPENCV_WINDOW);
    cv::destroyWindow(SKYVIEW);
  }

  void imageCb(const sensor_msgs::ImageConstPtr& msg)
  {
    std::cout<<"this is subscribe"<<std::endl;
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    // Draw an example circle on the video stream
    if (cv_ptr->image.rows > 600 && cv_ptr->image.cols > 600)
      cv::circle(cv_ptr->image, cv::Point(cv_ptr->image.cols/2,cv_ptr->image.rows/2), 50, CV_RGB(255,0,0),8);

    // grey image
   cv::Mat img_out;
    
   cv::cvtColor(cv_ptr->image, img_out, CV_RGB2GRAY);  //转换成灰度图象
    
// image segmentation
    cv::Mat dst;
    int maxVal =255;
    int blockSize =5;// key parameter 3,5,7,9...
    double C =5;// key parameter
    cv::adaptiveThreshold(img_out, dst, maxVal, cv::ADAPTIVE_THRESH_MEAN_C, cv::THRESH_BINARY,blockSize, C);
    uchar *data=dst.ptr<uchar>();
    int step=dst.rows/sizeof(uchar);
     int channels =dst.channels();
     int R,G,B;
     int nc= dst.cols*(dst.channels());
     int n1=dst.rows;
     for(int i=0; i<nc;i++)
{
    for(int j=0; j<n1;j++)
{
    B=(int)data[i*step + j*channels +0];
    G=(int)data[i*step + j*channels +1];
    R=(int)data[i*step + j*channels +3];
 std::cout<<"("<<i <<","<< j<<") = ("<<R<<","<<G<<","<<B<<")" <<std::endl; 
}
}
    cv::namedWindow("Image segmentation",CV_WINDOW_NORMAL);
    cv::imshow("Image segmentation", dst);

    std::cout<<"image size rows ->" <<cv_ptr->image.rows<<"  image size cols->"<<cv_ptr->image.cols<<std::endl;

    // Update GUI Window
    cv::resize(cv_ptr->image, cv_ptr->image, cv::Size(cv_ptr->image.cols/2, cv_ptr->image.rows/2)); // to half size or even smaller
    // cv::flip(cv_ptr->image, cv_ptr->image, -1);
    cv::imshow(OPENCV_WINDOW, cv_ptr->image);
    cv::waitKey(3);

    // Output modified video stream
    image_pub_.publish(cv_ptr->toImageMsg());
  }

  void readImage()
  {
    std::cout<<"read a image from a .png file"<<std::endl;
    cv::Mat image_ = cv::imread("src/ros_class/ivactuator/data/1.jpg",cv::IMREAD_COLOR);
    std::cout<<"image size rows ->" <<image_.rows<<"  image size cols->"<<image_.cols<<std::endl;
    if( image_.empty() )                      // Check for invalid input
    {
        std::cout <<  "Could not open or find the image" << std::endl ;
    }
    cv::namedWindow( SKYVIEW, cv::WINDOW_AUTOSIZE ); // Create a window for display.

    // start image processing here

    cv::imshow(SKYVIEW, image_);
    cv::waitKey(0); 
  }
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "skyview");
  ImageConverter ic;
  ros::spin();
  return 0;
}