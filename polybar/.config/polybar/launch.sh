#!/usr/bin/zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
MONITOR=DP-4 polybar main -l info -c ~/.config/polybar/config.ini >> /tmp/polybar1.log 2>&1 &
MONITOR=DP-0 polybar main -c ~/.config/polybar/config.ini >> /tmp/polybar1.log 2>&1 &

# launch bar
#echo "---" | tee -a /tmp/polybar1.log
#MONITOR=DP-4 polybar -rq >>/tmp/polybar1.log 2>&1 &
#MONITOR=HDMI-0 polybar bottom >>/tmp/polybar1.log 2>&1 &

echo "Bars launched..."
