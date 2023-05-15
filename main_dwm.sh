

xsetroot -name """$(date '+%Y-%m-%d %H:%M'  && printf ' | ' &&  printf 'Battery:' && upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {gsub(/%/, ""); print $2 }'  )"""


