// Generated by gencpp from file motoman_viz_msgs/BoundingBoxArray.msg
// DO NOT EDIT!


#ifndef MOTOMAN_VIZ_MSGS_MESSAGE_BOUNDINGBOXARRAY_H
#define MOTOMAN_VIZ_MSGS_MESSAGE_BOUNDINGBOXARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <motoman_viz_msgs/BoundingBox.h>

namespace motoman_viz_msgs
{
template <class ContainerAllocator>
struct BoundingBoxArray_
{
  typedef BoundingBoxArray_<ContainerAllocator> Type;

  BoundingBoxArray_()
    : header()
    , boxes()  {
    }
  BoundingBoxArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , boxes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::motoman_viz_msgs::BoundingBox_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::motoman_viz_msgs::BoundingBox_<ContainerAllocator> >::other >  _boxes_type;
  _boxes_type boxes;





  typedef boost::shared_ptr< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> const> ConstPtr;

}; // struct BoundingBoxArray_

typedef ::motoman_viz_msgs::BoundingBoxArray_<std::allocator<void> > BoundingBoxArray;

typedef boost::shared_ptr< ::motoman_viz_msgs::BoundingBoxArray > BoundingBoxArrayPtr;
typedef boost::shared_ptr< ::motoman_viz_msgs::BoundingBoxArray const> BoundingBoxArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator1> & lhs, const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.boxes == rhs.boxes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator1> & lhs, const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace motoman_viz_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "98a348ec541453ab2bc2636b7a7df5f3";
  }

  static const char* value(const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x98a348ec541453abULL;
  static const uint64_t static_value2 = 0x2bc2636b7a7df5f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motoman_viz_msgs/BoundingBoxArray";
  }

  static const char* value(const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# BoundingBoxArray is a list of BoundingBox.\n"
"# You can use motoman_rviz_plugins to visualize BoungingBoxArray on rviz.\n"
"Header header\n"
"BoundingBox[] boxes\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: motoman_viz_msgs/BoundingBox\n"
"# BoundingBox represents a oriented bounding box.\n"
"Header header\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Vector3 dimensions  # size of bounding box (x, y, z)\n"
"# You can use this field to hold value such as likelihood\n"
"float32 value\n"
"uint32 label\n"
"string tag\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.boxes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoundingBoxArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motoman_viz_msgs::BoundingBoxArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "boxes[]" << std::endl;
    for (size_t i = 0; i < v.boxes.size(); ++i)
    {
      s << indent << "  boxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::motoman_viz_msgs::BoundingBox_<ContainerAllocator> >::stream(s, indent + "    ", v.boxes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTOMAN_VIZ_MSGS_MESSAGE_BOUNDINGBOXARRAY_H
