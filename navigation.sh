#! /bin/bash
#echo "what does this do?"
#export XAUTHORITY=/home/pi/.Xauthority; export DISPLAY=:0;
echo "Sleep for 30 for full screen load"
sleep 30
echo "Start moving forward through slides"
for VARIABLE in 00 01 02 03 04 05 06 07 08 09 10 11
do
	xdotool key n
	echo "Next Slide"
	sleep 10
done
echo "starting infinite loop of scrooling and tabbing"
for (( ; ; ))
do
	xdotool key ctrl+Tab
	echo "Sleeping for 1 Minute to display trello board"
	sleep 30
	xdotool key ctrl+Tab
	echo "Switching back to presentation"
	echo "sleeping for 30 for screen load"
	sleep 30
	echo "starting function to get to full screen again"	
	xdotool key ctrl+F6
	echo "f6 ky hit"
	xdotool key Tab
	echo "tab key hit"
	xdotool key shift+Tab
	echo "shift plus tab kit"
	xdotool key KP_Enter
	echo "re-entering fullscreen mode"
	echo "Waiting for full screen to load - 10"
	sleep 10
		for VARIABLE in 00 01 02 03 04 05 06 07 08 09 10 11
        	do
                xdotool key n
		echo "Next Slide"
                sleep 10
        	done
done
echo "This exit message shouldn't be read"
