// Generated by gencpp from file ivactuator/ivactuator.msg
// DO NOT EDIT!


#ifndef IVACTUATOR_MESSAGE_IVACTUATOR_H
#define IVACTUATOR_MESSAGE_IVACTUATOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ivactuator
{
template <class ContainerAllocator>
struct ivactuator_
{
  typedef ivactuator_<ContainerAllocator> Type;

  ivactuator_()
    : EmBrakerStatus(0)
    , EpsStatus(0)
    , TorqueStatus(0)
    , DecStatus(0)
    , SysStatus(0)
    , ucGearCtrlStatus(0)
    , BrakePedalStatus(0)
    , CruiseStatus(0)
    , ucGearPosition(0)
    , uispeed(0)
    , uisteerangle(0)
    , BatteryVoltage(0)
    , CrossAccelerated(0)
    , LengthwayAccelerated(0)
    , SwingAngularVelocity(0)  {
    }
  ivactuator_(const ContainerAllocator& _alloc)
    : EmBrakerStatus(0)
    , EpsStatus(0)
    , TorqueStatus(0)
    , DecStatus(0)
    , SysStatus(0)
    , ucGearCtrlStatus(0)
    , BrakePedalStatus(0)
    , CruiseStatus(0)
    , ucGearPosition(0)
    , uispeed(0)
    , uisteerangle(0)
    , BatteryVoltage(0)
    , CrossAccelerated(0)
    , LengthwayAccelerated(0)
    , SwingAngularVelocity(0)  {
  (void)_alloc;
    }



   typedef uint8_t _EmBrakerStatus_type;
  _EmBrakerStatus_type EmBrakerStatus;

   typedef uint8_t _EpsStatus_type;
  _EpsStatus_type EpsStatus;

   typedef uint8_t _TorqueStatus_type;
  _TorqueStatus_type TorqueStatus;

   typedef uint8_t _DecStatus_type;
  _DecStatus_type DecStatus;

   typedef uint8_t _SysStatus_type;
  _SysStatus_type SysStatus;

   typedef uint8_t _ucGearCtrlStatus_type;
  _ucGearCtrlStatus_type ucGearCtrlStatus;

   typedef uint8_t _BrakePedalStatus_type;
  _BrakePedalStatus_type BrakePedalStatus;

   typedef uint8_t _CruiseStatus_type;
  _CruiseStatus_type CruiseStatus;

   typedef uint8_t _ucGearPosition_type;
  _ucGearPosition_type ucGearPosition;

   typedef int16_t _uispeed_type;
  _uispeed_type uispeed;

   typedef int16_t _uisteerangle_type;
  _uisteerangle_type uisteerangle;

   typedef int16_t _BatteryVoltage_type;
  _BatteryVoltage_type BatteryVoltage;

   typedef int16_t _CrossAccelerated_type;
  _CrossAccelerated_type CrossAccelerated;

   typedef int16_t _LengthwayAccelerated_type;
  _LengthwayAccelerated_type LengthwayAccelerated;

   typedef int16_t _SwingAngularVelocity_type;
  _SwingAngularVelocity_type SwingAngularVelocity;




  typedef boost::shared_ptr< ::ivactuator::ivactuator_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ivactuator::ivactuator_<ContainerAllocator> const> ConstPtr;

}; // struct ivactuator_

typedef ::ivactuator::ivactuator_<std::allocator<void> > ivactuator;

typedef boost::shared_ptr< ::ivactuator::ivactuator > ivactuatorPtr;
typedef boost::shared_ptr< ::ivactuator::ivactuator const> ivactuatorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ivactuator::ivactuator_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ivactuator::ivactuator_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ivactuator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'ivactuator': ['/home/wenws/CV_GNSS/src/ivactuator/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ivactuator::ivactuator_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ivactuator::ivactuator_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ivactuator::ivactuator_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ivactuator::ivactuator_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ivactuator::ivactuator_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ivactuator::ivactuator_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ivactuator::ivactuator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "526428371bea2f291a9985ee99cde163";
  }

  static const char* value(const ::ivactuator::ivactuator_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x526428371bea2f29ULL;
  static const uint64_t static_value2 = 0x1a9985ee99cde163ULL;
};

template<class ContainerAllocator>
struct DataType< ::ivactuator::ivactuator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ivactuator/ivactuator";
  }

  static const char* value(const ::ivactuator::ivactuator_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ivactuator::ivactuator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 EmBrakerStatus\n\
uint8 EpsStatus\n\
uint8 TorqueStatus\n\
uint8 DecStatus   \n\
uint8 SysStatus\n\
uint8 ucGearCtrlStatus  \n\
uint8 BrakePedalStatus\n\
uint8 CruiseStatus\n\
uint8 ucGearPosition\n\
int16 uispeed\n\
int16 uisteerangle\n\
int16 BatteryVoltage\n\
int16 CrossAccelerated\n\
int16 LengthwayAccelerated\n\
int16 SwingAngularVelocity\n\
\n\
\n\
";
  }

  static const char* value(const ::ivactuator::ivactuator_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ivactuator::ivactuator_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.EmBrakerStatus);
      stream.next(m.EpsStatus);
      stream.next(m.TorqueStatus);
      stream.next(m.DecStatus);
      stream.next(m.SysStatus);
      stream.next(m.ucGearCtrlStatus);
      stream.next(m.BrakePedalStatus);
      stream.next(m.CruiseStatus);
      stream.next(m.ucGearPosition);
      stream.next(m.uispeed);
      stream.next(m.uisteerangle);
      stream.next(m.BatteryVoltage);
      stream.next(m.CrossAccelerated);
      stream.next(m.LengthwayAccelerated);
      stream.next(m.SwingAngularVelocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ivactuator_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ivactuator::ivactuator_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ivactuator::ivactuator_<ContainerAllocator>& v)
  {
    s << indent << "EmBrakerStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.EmBrakerStatus);
    s << indent << "EpsStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.EpsStatus);
    s << indent << "TorqueStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.TorqueStatus);
    s << indent << "DecStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.DecStatus);
    s << indent << "SysStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SysStatus);
    s << indent << "ucGearCtrlStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ucGearCtrlStatus);
    s << indent << "BrakePedalStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.BrakePedalStatus);
    s << indent << "CruiseStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.CruiseStatus);
    s << indent << "ucGearPosition: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ucGearPosition);
    s << indent << "uispeed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.uispeed);
    s << indent << "uisteerangle: ";
    Printer<int16_t>::stream(s, indent + "  ", v.uisteerangle);
    s << indent << "BatteryVoltage: ";
    Printer<int16_t>::stream(s, indent + "  ", v.BatteryVoltage);
    s << indent << "CrossAccelerated: ";
    Printer<int16_t>::stream(s, indent + "  ", v.CrossAccelerated);
    s << indent << "LengthwayAccelerated: ";
    Printer<int16_t>::stream(s, indent + "  ", v.LengthwayAccelerated);
    s << indent << "SwingAngularVelocity: ";
    Printer<int16_t>::stream(s, indent + "  ", v.SwingAngularVelocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IVACTUATOR_MESSAGE_IVACTUATOR_H
