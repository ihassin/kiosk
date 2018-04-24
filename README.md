# kiosk
Must install libnotify-bin as well:
sudo apt-get install libnotify-bin
This is what enables the application to send notification messages to the PI's UI
Here's a post on how to use it: https://raspberrypi.stackexchange.com/questions/37081/how-do-i-display-a-message-on-the-screen


In order for the kiosk.sh script to open and scroll through new tabs, install xdotool:
https://blog.hostonnet.com/installation-of-xdotool-on-linux

Here's some further info on using xdotool:
https://unix.stackexchange.com/questions/87831/how-to-send-keystrokes-f5-from-terminal-to-a-gui-program
https://www.semicomplete.com/projects/xdotool/xdotool.xhtml
https://unix.stackexchange.com/questions/87831/how-to-send-keystrokes-f5-from-terminal-to-a-gui-program

prevent crash bubbles and messages while in kiosk mode:
https://superuser.com/questions/461035/disable-google-chrome-session-restore-functionality
https://superuser.com/questions/873381/how-can-i-disable-the-chromium-didn-t-shut-down-correctly-message-when-my-brow
- Go to chrome://flags/
- Then click Enable on the link that writes: "Disable Better session restore"

