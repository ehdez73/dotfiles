#!/bin/bash
if test ! $(which skype)
then
	echo -e "\e[33mInstalling Skype\e[39m"
	sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' >> /etc/apt/sources.list.d/canonical_partner.list"
	sudo apt-get update
	sudo apt-get install -y skype
fi
