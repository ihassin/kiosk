#! /bin/bash
#echo "what does this do?"
#export XAUTHORITY=/home/pi/.Xauthority; export DISPLAY=:0;
echo "sleeping 30 for screen load"
sleep 30
xdotool key Escape
sleep 10
echo "starting infinite loop of scrooling and tabbing"
for (( ; ; ))
do
		echo "10 second sleep to display current slide"
	    sleep 10
	    xdotool key Escape
	    sleep 2
	    xdotool key ctrl+r
	    sleep 20
			for VARIABLE in 00 01 02 03 04 05 06 07 08
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
done
echo "This exit message shouldn't be read"
