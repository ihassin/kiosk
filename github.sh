
#!/bin/bash

# store the current dir
CUR_DIR=$(pwd)

# Let the person running the script know what's going on.
echo "\n\033[1mPulling in latest changes for all repositories...\033[0m\n"

# Find all git repositories and update it to the master latest revision
for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo "\033[33m"+$i+"\033[0m";

    # We have to go to the .git parent directory to call the pull command
    cd "$i";
    cd ..;

    # finally force pull
        git fetch --all
        git reset --hard origin/master
        #This was original, but didn't do a force overwrite of local changes
        #git pull origin master;

    # lets get back to the CUR_DIR
    cd $CUR_DIR
done

echo "\n\033[32mComplete!\033[0m\n"
#echo removing old presentation files
rm -rf /home/pi/Desktop/git-projects/kiosk/office\ presentation/
rm -rf /home/pi/office\ presentation/

sleep 10
echo "copying all contents to the working dir"
\cp -rf /home/pi/Desktop/git-projects/kiosk/* /home/pi
sleep 30
chmod -R +x /home/pi
