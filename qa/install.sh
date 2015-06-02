#!/bin/bash

# Install Ruby
if test $(which ruby)
then
	echo "Ruby already installed"
	echo `ruby --version`
else
	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
	curl -sSL https://get.rvm.io | bash -s stable --ruby=2.0.0
	source ~/.rvm/scripts/rvm
	ruby --version
fi


# Install Appium
if test $(which appium)
then
	echo "Appium already installed"
else

	if ! test $(which node)
	then 
		curl -sSL https://raw.githubusercontent.com/ehdez73/dotfiles/master/node/install.sh | sudo sh
	fi

	sudo npm install -g appium
fi

