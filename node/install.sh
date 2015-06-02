#!/bin/bash
if test $(which nodejs)
then
	echo "Node already installed"
	echo `nodejs --version`
else
	sudo apt-get install nodejs npm
fi

if ! test $(which node)
then 
	sudo ln -s /usr/bin/nodejs /usr/bin/node
fi
