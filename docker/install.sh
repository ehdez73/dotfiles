#!/bin/bash
if test ! $(which docker)
then
	echo -e "\e[33mInstalling Docker\e[39m"
  	sudo apt-get -y install docker.io
	sudo usermod -aG docker $USER
fi

if test ! $(which fig)
then
	echo -e "\e[33mInstalling Fig\e[39m"
	sudo pip install -U fig
fi

sudo apt-get install dnsmasq


