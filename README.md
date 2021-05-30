# raspiLeds
Tools to switch green and red led on Rasppberry Pi board

Tested on Raspberry Pi 3B with OS Raspian stretch and on Raspberry Pi 4 with OS Debian Buster.


--- Building ---

git clone https://github.com/Ulf24/raspiLeds.git

cd raspiLeds/

make

--- Using ---

sudo ./greenOn

sudo ./greenOff

sudo ./redOn

sudo ./redOff

--- Using without sudo ---

#The tool setPermissions adds a group gpio and put you into this group. Then it sets the owners and the rights for the led-interface-files.

#Please start it not as root, because you must into this group and not root.

./setPermissions

#Now you can use these tools without sudo.

#But after restarting the os owners and rights are reseted to original. To set owners and rights new, you can use:

./setPermissions -f
