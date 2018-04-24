#! /bin/bash
# this will kill all chromium browsers running
killall chromium-browser
sleep 10
kioskstate=1
export kioskstate
echo "$kioskstate"
echo "$kioskstate" > currentstate.txt
echo "Set kioskstate var to $kioskstate"
bash /home/pi/kiosk-sub.sh






