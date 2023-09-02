#!/bin/bash

#creator--Patxa

if [ -n "$(ifconfig eth0 2>/dev/null | grep 'inet ')"]; then
    echo "$(/usr/sbin/ifconfig eth0 | grep 'inet ' | awk '{print $2}')"
elif [ -n "$(ifconfig wlan0 2>/dev/null | grep 'inet ')"]; then
    echo "$(/usr/sbin/ifconfig wlan0 | grep 'inet ' | awk '{print $2}')"
else
    echo "Disconnected"
fi