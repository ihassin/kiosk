#! /bin/bash
# this will kill all chromium browsers running
killall chromium-browser
sleep 10
kioskstate=1
export kioskstate
echo "Kiosk state is $kioskstate"
echo "$kioskstate" > currentstate.txt
sudo bash /home/pi/kiosk-sub.sh






