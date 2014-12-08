#/bin/bash
if test ! $(which zsh)
then
	sudo apt-get install zsh
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi