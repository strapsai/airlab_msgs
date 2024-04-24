std_msgs/Header stamp

## Name of the sending node
string name

## Device 
#   RC#
#   Basestation
string device

## Message to be sent
string msg

## Type of message
int8 ERROR = -1
int8 WARN  =  0
int8 INFO  =  1
int8 USELESS_INFO = 100
# int8 type

## Priority of message (Lower is higher priority)
int8 priority


