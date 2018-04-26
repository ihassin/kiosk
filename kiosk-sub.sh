#! /bin/bash

rm -rf /home/pi/.config/chromium/Default/Web\ Data

sleep 2

# Since running from CLI, chromium doesn't know where to display, this fixes that

export DISPLAY=:0.0

#These settings are to prevent the "chrome crashed" messages
#sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/google-chrome/Default/Preferences
#sed -i 's/"exit_type": "Crashed"/"exit_type": "None"/' ~/.config/google-chrome/Default/Preferences

# This next step will fire up chromium full-screen with two tabs open
#Does this work?
echo "Starting Chromium"
#chromium-browser --kiosk --disable-session-crashed-bubble --disable-infobars --start-maximized --noerrdialogs --enable-logging --v=1 https://trello.com/b/WJWGkyKU/buildit-us file:///home/pi/office%20presentation/assets/player/KeynoteDHTMLPlayer.html &

chromium-browser --kiosk --disable-session-crashed-bubble --disable-infobars --start-maximized --noerrdialogs --enable-logging --v=1 https://weather.com file:///home/pi/office%20presentation/assets/player/KeynoteDHTMLPlayer.html &

sleep 5
bash /home/pi/navigation.sh