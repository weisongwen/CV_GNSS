#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

static const std::string OPENCV_WINDOW = "Image window";
static const std::string SKYVIEW = "SKYVIEW";

using namespace cv;
using namespace std;
class ImageConverter
{
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;

public:
  typedef struct
  {
    float x;
    float y;
    float azimuth;
    float maskElevation;
  }floatPoint;

  vector<floatPoint> GlobalboundaryPointlist;

public:
  ImageConverter()
    : it_(nh_)
  {
    // Subscribe to input video feed and publish output video feed
    image_sub_ = it_.subscribe("/camera_array/cam0/image_raw", 1,&ImageConverter::imageCallback, this);
    image_pub_ = it_.advertise("/image_converter/output_video", 1);
   
    cv::namedWindow(SKYVIEW);
    
    // processSingleImage(); // if you want to test the single image processing, just uncomment this 
  }

  ~ImageConverter()
  {
    cv::destroyWindow(OPENCV_WINDOW);
    cv::destroyWindow(SKYVIEW);
  }

  void imageCallback(const sensor_msgs::ImageConstPtr& msg)
  {
    cv_bridge::CvImagePtr cv_ptr; // brige variable 
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    cv::Mat image_ = cv_ptr->image;
    if( image_.empty() )                      // Check for invalid input
    {
        std::cout <<  "image is empty!" << std::endl ;
    }
    cv::namedWindow( SKYVIEW, cv::WINDOW_AUTOSIZE ); // Create a window for display.

    /* start image processing here*/
    // Step 1:  grey image
    cv::Mat img_out;
    cv::cvtColor(image_, img_out, CV_RGB2GRAY);  //转换成灰度图象
    
    // Step 2: image segmentation
    cv::Mat dst;
    cv::Mat dstAfterBlur;
    int maxVal =255;
    int blockSize =5;// key parameter 3,5,7,9...
    double C =5;// key parameter
    cv::adaptiveThreshold(img_out, dst, maxVal, cv::ADAPTIVE_THRESH_MEAN_C, cv::THRESH_BINARY,blockSize, C);
    cv::medianBlur(dst, dstAfterBlur, 3);//remove noises
    dst = dstAfterBlur;
    uchar *data=dst.ptr<uchar>();
    int step=dst.rows/sizeof(uchar);
    int channels =dst.channels();
    int R,G,B;
    int nc= dst.cols*(dst.channels());
    int n1=dst.rows;
    for(int i=0; i<nc;i++) // I am not sure what you are doing here
    {
        for(int j=0; j<n1;j++)
      {
          B=(int)data[i*step + j*channels +0];
          G=(int)data[i*step + j*channels +1];
          R=(int)data[i*step + j*channels +3];
          // std::cout<<"("<<i <<","<< j<<") = ("<<R<<","<<G<<","<<B<<")" <<std::endl; 
      }
    }      

    // Step 3:extract boundary
    // floatPoint result =  searchWithcartesianAngle(dst,45);
    labelBoundary(dst); //save boundaries to GlobalboundaryPointlist

    // Step 4:show boundary in RGB image
    for(int num = 0; num<GlobalboundaryPointlist.size(); num++)
    {
      cv::circle(image_, cv::Point(GlobalboundaryPointlist[num].y, GlobalboundaryPointlist[num].x), 1, CV_RGB(255,0,0),5);
      cv::line(image_,cv::Point(GlobalboundaryPointlist[num].y, GlobalboundaryPointlist[num].x),
        cv::Point(image_.cols/2,image_.rows/2),Scalar(0,0,255),1,4);
    }

    // Step 5:draw a circle in the mid of RGB image
    cv::circle(image_, cv::Point(image_.cols/2,image_.rows/2), 3, CV_RGB(0,255,0),8);
    
    // Step 6:draw a circle in the RGB image at a position 
    cv::circle(image_, cv::Point(image_.cols/2 - 50,image_.rows/2 - 50), 8, CV_RGB(0,0,255),8); // draw a satellite
    cv::putText(image_, 
          "SV 26",
          cv::Point(image_.cols/2 - 90,image_.rows/2 - 70), // Coordinates
          cv::FONT_HERSHEY_COMPLEX_SMALL, // Font
          1.0, // Scale. 2.0 = 2x bigger
          cv::Scalar(255,0,0), // BGR Color
          1, // Line Thickness (Optional)
          CV_AA); // Anti-alias (Optional)
    
    // Step 7: Output modified video stream
    cv_ptr->image = image_;
    image_pub_.publish(cv_ptr->toImageMsg());
    std::cout<<"finish one callback...." <<std::endl;
  }

  void processSingleImage()
  {
    std::cout<<"read a image from a .png file"<<std::endl;
    cv::Mat image_ = cv::imread("src/ivactuator/data/skyview.png",cv::IMREAD_COLOR);
    if(image_.rows<1) 
    {
      std::cout<<"files not found!"<<std::endl;
    }
    std::cout<<"image size rows ->" <<image_.rows<<"  image size cols->"<<image_.cols<<std::endl;
    if( image_.empty() )                      // Check for invalid input
    {
        std::cout <<  "Could not open or find the image" << std::endl ;
    }
    cv::namedWindow( SKYVIEW, cv::WINDOW_AUTOSIZE ); // Create a window for display.

    // start image processing here
    // grey image
    cv::Mat img_out;
    
    cv::cvtColor(image_, img_out, CV_RGB2GRAY);  //转换成灰度图象
    
    // image segmentation
    cv::Mat dst;
    cv::Mat dstAfterBlur;
    int maxVal =255;
    int blockSize =5;// key parameter 3,5,7,9...
    double C =5;// key parameter
    cv::adaptiveThreshold(img_out, dst, maxVal, cv::ADAPTIVE_THRESH_MEAN_C, cv::THRESH_BINARY,blockSize, C);
    cv::medianBlur(dst, dstAfterBlur, 3);//remove noises
    dst = dstAfterBlur;
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
          // std::cout<<"("<<i <<","<< j<<") = ("<<R<<","<<G<<","<<B<<")" <<std::endl; 
      }
    }      
    // cv::namedWindow("Image segmentation",CV_WINDOW_NORMAL); // make window small

    // floatPoint result =  searchWithcartesianAngle(dst,45);
    labelBoundary(dst); //save boundaries to GlobalboundaryPointlist

    for(int num = 0; num<GlobalboundaryPointlist.size(); num++)
    {
      cv::circle(image_, cv::Point(GlobalboundaryPointlist[num].y, GlobalboundaryPointlist[num].x), 1, CV_RGB(255,0,0),5);
    }
    cv::imshow("RGB Image", image_);
    std::cout<<"image size rows ->" <<image_.rows<<"  image size cols->"<<image_.cols<<std::endl;
    

    // cv::imshow(SKYVIEW, dst);
    cv::waitKey(0); 
  }


  void labelBoundary(cv::Mat inputImage)
  {
    cv::Mat inputImageforShow; 
    inputImageforShow = inputImage;
    double searchRadis = sqrt((inputImage.rows * inputImage.rows * 0.25) + (inputImage.cols * inputImage.cols * 0.25)); 
    vector<floatPoint> boundaryPointlist;
    
    for(float cartesianAngle = 0; cartesianAngle<=360; cartesianAngle=cartesianAngle+0.5)
    {
        bool findBoundary =false;
        floatPoint movingPoint; // dynamic point
        movingPoint.x = 0; // rows
        movingPoint.y = 0; // cols
        double increment = 1; // increment is one pixel distance 
        std::cout<<"searchRadis=  "<<searchRadis<<"     cartesianAngle=  "<<cartesianAngle<<std::endl;
        // wait(3);
        while( (increment < searchRadis) && (!findBoundary)) // search radis
      {
        increment = increment + 1; // increment
        movingPoint.x = inputImage.rows/2 - increment * sin(cartesianAngle * 3.1415926 / 180.0);
        movingPoint.y = inputImage.cols/2 + increment * cos(cartesianAngle * 3.1415926 / 180.0);
        movingPoint.azimuth = cartesianAngle;
        if((movingPoint.x < inputImage.rows) && ((movingPoint.y < inputImage.cols))&&
          (movingPoint.x >0) && ((movingPoint.y >0)))
        {
          int pixelValue = inputImage.at<uchar>((int)movingPoint.x,(int)movingPoint.y);
          if(pixelValue==0) // find black point
          {
            std::cout<<"movingPoint.x= "<<movingPoint.x<<"   movingPoint.y= "<<movingPoint.y<<"pixel value "<<pixelValue<<std::endl;
            boundaryPointlist.push_back(movingPoint);
            findBoundary = true;
            std::cout<<"pixelValue=  "<<pixelValue<<"\n\n"<<std::endl;
          }
        }
      }
      if(!findBoundary) // if no blockage, still save the boundary
      {
        movingPoint.maskElevation =90; // think as no blockage
        std::cout<<"could not find the blockage in this azimuth"<<std::endl;
        boundaryPointlist.push_back(movingPoint);
      }
    }
    for(int num = 0; num<boundaryPointlist.size(); num++)
    {
      cv::circle(inputImageforShow, cv::Point(boundaryPointlist[num].y, boundaryPointlist[num].x), 1, CV_RGB(255,0,0),5);
    }
    GlobalboundaryPointlist = boundaryPointlist;
    
    // cv::imshow(SKYVIEW, inputImageforShow);
  }

  void wait(int seconds) // delay function
  {
    clock_t endwait,start;
    start = clock();
    endwait = clock() + seconds * CLOCKS_PER_SEC;
    while (clock() < endwait) {
      if(clock() - start > CLOCKS_PER_SEC)
      {
        start = clock();
        std::cout<<".......1 s"<<std::endl;
      }
    }
  }

};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "skyview");
  ImageConverter ic;
  ros::spin();
  return 0;
}