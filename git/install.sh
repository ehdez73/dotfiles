#!/bin/sh

if test ! $(which meld)
then
  echo "  Installing git."
  sudo apt-get -y install git git-gui gitk meld vim > /tmp/git-install.log
fi
