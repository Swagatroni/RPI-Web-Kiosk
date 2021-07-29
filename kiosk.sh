#!/bin/bash

xset s off
xset s noblank
xset -dpms

# Allow quitting the X server with CTRL-ATL-Backspace
setxkbmap -option terminate:ctrl_alt_bksp

# Start Chromium in kiosk mode
# Start Chromium in kiosk mode
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences/usr/bin/chromium-browser --disable-infobars --kiosk 'http://your-url-here'

/usr/bin/chromium-browser --disable-infobars --kiosk 'http://your-url-here'

while true; do
  xdotool keydown ctrl+R;
  sleep 120
done
