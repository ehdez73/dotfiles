#!/bin/sh

if test ! $(which cairo-dock)
then
  echo "  Installing cairo-dock"
  sudo apt-get -y install cairo-dock
fi