#!/bin/bash

if ! pgrep -x "network-manager-applet" > /dev/null;
then
   network-manager-applet &
fi