#!/bin/bash

#creator--Patxa

if [ -n "$(ifconfig tun0 2>/dev/null | grep 'inet ')"]; then
    echo "$(/usr/sbin/ifconfig tun0 | grep 'inet ' | awk '{print $2}')"
else
    echo "Disconnected"
fi