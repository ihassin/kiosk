#! /bin/bash
# Need this to run from printscreen press

kioskstate=`cat /home/pi/currentstate.txt`
echo "Kiosk state is $kioskstate"
if [ "$kioskstate" = "0" ];
then
notify-send "Kiosk Mode Restarting"
echo "Kiosk Mode Restarting"
bash /home/pi/kiosk.sh
fi
if [ "$kioskstate" = "1" ];
then
echo "Killing all bash scripts"
kioskstate=0
export kioskstate
echo "Kiosk state is $kioskstate"
echo "$kioskstate" > currentstate.txt
echo "Set Kiosk State to $kioskstate"
notify-send "Kiosk Mode Stopped"
killall bash
fi
