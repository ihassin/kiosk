#! /bin/bash
#echo "what does this do?"
#export XAUTHORITY=/home/pi/.Xauthority; export DISPLAY=:0;
xdotool key Escape
sleep 2
xdotool key ctrl+r
echo "Sleep 10 for page load"
sleep 10
echo "starting infinite loop of scrooling and tabbing"
for (( ; ; ))
do
	xdotool key ctrl+Tab
	echo "Sleeping for 1 Minute to display trello board"
	sleep 30
	echo "Switching back to presentation"
	xdotool key ctrl+Tab
	echo "sleeping for 30 for screen load"
	sleep 30
	echo "Waiting for full screen to load - 20"
	sleep 20
		for VARIABLE in 00 01 02 03 04 05
        	do
                xdotool key n
		echo "Next Slide"
                sleep 10
        	done
    xdotool key ctrl+Tab
	echo "Sleeping for 1 Minute to display trello board"
	sleep 30
	echo "Switching back to presentation"
	xdotool key ctrl+Tab
	echo "sleeping for 30 for screen load"
	sleep 30
	echo "Waiting for full screen to load - 20"
	sleep 20
		for VARIABLE in 00 01 02 03 04 05
        	do
                xdotool key p
		echo "Next Slide"
                sleep 10
        	done
done
echo "This exit message shouldn't be read"
