cd ~

export MOZ_USE_XINPUT2=1

export GTK_CSD=0
export LD_PRELOAD="/usr/lib/libgtk3-nocsd.so.0:${LD_PRELOAD}"

nitrogen --restore &
picom -b &
dunst &
unclutter &
xbindkeys
xset -dpms
xset s off

while true; do
	xsetroot -name " $(uname -r) | $(iw dev wlan0 info | grep ssid | awk '{print $2}') | $(cat /sys/class/power_supply/BAT0/capacity) | $(date "+%F %T")"
	sleep 1s
done &

exec dwm
