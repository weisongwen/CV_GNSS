# Software for CV aided GNSS

## Spec Recommendation

- Number of CPU cores: 8
- RAM size: 32GB
- Storage size: 30GB

## Requirements

- ROS jade (Ubuntu 14.04)
- OpenCV 2.4.10 or higher
- Qt 5.2.1 or higher
- CUDA(Optional)
- FlyCapture2 (Optional)
- Armadillo (Optional)


## How to Build and Start

```
$ cd $HOME
$ mkdir ~/CV_GNSS/src
$ cd src/
$ git clone https://github.com/weisongwen/CV_GNSS.git
$ cd ~/CV_GNSS
$ catkin_make
$ source devel/setup.bash
$ rosrun ivactuator skyview
```

