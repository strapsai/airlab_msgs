cmake_minimum_required(VERSION 3.20)
project(airlab_msgs)

set(CMAKE_CXX_STANDARD 14)

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)


rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/AllCarPos.msg"
  "msg/CameraStream.msg"
  "msg/CameraStreamArray.msg"
  "msg/CommonAlert.msg"
  "msg/CommsGraph.msg"
  "msg/CommsLink.msg"
  "msg/ConvoyPosition.msg"
  "msg/ConvoyPositionArray.msg"  
  
  "msg/DirectionalInput.msg"
  
  "msg/GlobalDescriptor.msg"
  "msg/GoalInput.msg"

  "msg/LoopInfoCompressed.msg"  

  "msg/AIRLABModes.msg"

  "msg/NavigateStairRequest.msg"
  "msg/NavigateStairResponse.msg"
  "msg/NeighborEstimate.msg"
  
  "msg/PathVelocity.msg"
  "msg/PointcloudCompressed.msg"
  
  "msg/RobotInfo.msg"
  "msg/RobotInfoArray.msg"

  "msg/StairElement.msg"

  "msg/StairsMessage.msg"

  "msg/StairStep.msg"
  "msg/StringArray.msg"
  DEPENDENCIES std_msgs nav_msgs geometry_msgs sensor_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
