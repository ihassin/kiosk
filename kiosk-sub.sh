#! /bin/bash

rm -rf /home/pi/.config/chromium/Default/Web\ Data

sleep 2

# Since running from CLI, chromium doesn't know where to display, this fixes that

export DISPLAY=:0.0

#These settings are to prevent the "chrome crashed" messages
sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/google-chrome/Default/Preferences
sed -i 's/"exit_type": "Crashed"/"exit_type": "None"/' ~/.config/google-chrome/Default/Preferences

# This next step will fire up chromium full-screen with two tabs open

chromium-browser --kiosk --disable-session-crashed-bubble --disable-infobars --start-maximized --noerrdialogs --enable-logging --v=1 https://trello.com/b/WJWGkyKU/buildit-us https://wipro365-my.sharepoint.com/:p:/r/personal/sh20000592_wipro_com/_layouts/15/Doc.aspx?sourcedoc=%7Ba8855340-7a70-45ee-ae55-2ebe73a305f1%7D&action=edit &

sleep 30

xdotool key ctrl+Tab
sleep 40
xdotool key ctrl+F6
sleep 5
for VARIABLE in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22
do
        echo "hitting tab key"
        xdotool key Tab
        sleep 1
done
xdotool key KP_Enter
echo "Waiting 45 to start navigation script"
sleep 45
bash /home/pi/navigation.sh