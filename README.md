# Puppet-module-for-audio-and-video-in-Xubuntu

Work in progress

#When using a live stick (Tested Linux Xubuntu 16.04 LTS), run the following commands first:
-sudo apt-get update
-sudo apt-get install -y git
-sudo git clone https://github.com/jaakkojamsa/Puppet-module-for-audio-and-video-in-Xubuntu.git
-Run a script called av_alku.sh (This installs Puppet and puts the necessary files in place.)
-Run command sudo puppet apply -e 'class {"avjj17":}'
You will then have audio and video tools ready for use.

#This module installs the following softwares:
-audacity (audio editor)
-kdenlive (video editor)
-vlc (player)
-gimp (picture editor)
-tree (path visualization)
-musescore (notation)
-handbrake (video format convertion)

#Audacity configuration:
-Keyboard is modifyed. Zoom in is up-key and zoom out is down-key.
-Default recording sample rate is 48 000 kHz.

#Notice: also, the desktop wallpaper changes with this module
