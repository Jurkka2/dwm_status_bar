

date=`date '+%Y-%m-%d %H:%M'`
bat=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {gsub(/%/, ""); print $2 }' `


xsetroot -name """$( printf " | " ; printf "Bat: $bat" ; printf " | " ; printf "Time: $date" ; printf " |" ; )"""

