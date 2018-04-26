# kiosk
Initial Setup on Raspberry PI:
- Open chrome and log into your trello account to access buildit-us board
- Create a folder on the desktop titled "git-projects"
- If git-projects was created with mkdir, not GUI: chmod 777 git-projects, so you have access to this dir
- From terminal cd /home/pi/git projects
- From command line, run command "git clone https://github.com/shaunparris/kiosk.git"
- cd to new kiosk dir
- run github.sh script: "./github.sh" - This will copy all scripts to their working directory of /home/pi and ensure the scripts are executable
- Install libnotify-bin: "sudo apt-get install libnotify-bin" - further information below
- Install xdotool: "sudo apt-get install xdotool" - further information below

If you wish to use the Print Screen key to toggle
- Ensure this file exists: /usr/local/bin/kioskstateswitch.sh - If not, the copy didn't work correctly from the github.sh script. Try running this command manually to troubleshoot "sudo \cp -rf /home/pi/Desktop/git-projects/kiosk/kioskstateswitch.sh /usr/local/bin/kioskstateswitch.sh"
- Edit file ~/.config/openbox/lxde-pi-rc.xml
- Find line that contains:
'''<keybind key="Print">'''
- Match this section of xml:

'''<keybind key="Print">
      <action name="Execute">
        <command>./kioskstateswitch.sh</command>
      </action>
    </keybind>'''

- Run command "openbox --reconfigure"


Further Information on install's from above:

Must install libnotify-bin as well:
sudo apt-get install libnotify-bin
This is what enables the application to send notification messages to the PI's UI
Here's a post on how to use it: https://raspberrypi.stackexchange.com/questions/37081/how-do-i-display-a-message-on-the-screen

To enable toggling kiosk mode via a key command follow the steps in this guide:
https://wiki.lxde.org/en/How_to_take_screenshots
Instead of screenshot.sh, use kioskstateswitch.sh from this repo
kioskstateswitch.sh should automatically be copied to the correct repo: /usr/local/bin
Just need to update ~/.config/openbox/lxde-pi-rc.xml to run kioskstateswitch.sh


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

