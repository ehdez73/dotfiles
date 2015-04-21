#!/bin/bash

if test ! $(which atom)
then
	echo "Installing atom"
	sudo add-apt-repository ppa:webupd8team/atom
	sudo apt-get update
	sudo apt-get install atom
fi