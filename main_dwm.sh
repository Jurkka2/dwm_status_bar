#!/bin/bash

while [ true ] 
do
	date=`date '+%Y-%m-%d %H:%M:%S'`
	bat=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {gsub(/%/, ""); print $2 }' `
	ton=`amixer get Master | awk -F '[][]' '/%/ { print $2 }' | awk '{ print $1 }'`
	load=`cat /proc/loadavg | awk '{print $3}'`

	xsetroot -name """$( printf "|| "; printf "󰍛: $load" ; printf " | ";  printf "󰓃: $ton"; printf " | " ; printf ": $bat" ; printf " | " ; printf ": $date" ; printf " ||" ; )"""
done 
