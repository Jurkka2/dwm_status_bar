#!/bin/bash
set +x

while [ true ] 
do
	date=`date '+%Y-%m-%d %H:%M:%S'`
	bat=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {gsub(/%/, ""); print $2 }' `

	xsetroot -name """$( printf " | " ; printf "Bat: $bat" ; printf " | " ; printf "Time: $date" ; printf " |" ; )"""
done 
