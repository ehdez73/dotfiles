#!/bin/sh

if test ! $(which pip)
then
    echo -e "\e[33mInstalling Python[39m"
	sudo apt-get install python-pip
fi