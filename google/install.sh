#!/bin/sh

if test ! $(which google-chrome)
then
  echo "  Installing Google Chrome."
  sudo apt-get -y install libxss1 libappindicator1 libindicator7
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
  sudo dpkg -i google-chrome-stable_current_amd64.deb
  rm google-chrome-stable_current_amd64.deb
fi

# http://www.muylinux.com/2014/05/14/grive-tools-google-drive
if test ! $(which grive)
then
  echo "  Installing Grive."
  sudo add-apt-repository ppa:thefanclub/grive-tools
  sudo apt-get update
  sudo apt-get install grive-tools
fi
