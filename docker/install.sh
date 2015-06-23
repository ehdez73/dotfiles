#!/bin/bash
if test ! $(which docker)
then
	echo -e "\e[33mInstalling Docker\e[39m"
	curl -sSL https://get.docker.com/ubuntu/ | sudo sh
  	sudo usermod -aG docker $USER
fi

if test ! $(which docker-compose)
then
    # pip required
    source ../python/install.sh
    echo -e "\e[33mInstalling docker-compose\e[39m"
	sudo pip install -U docker-compose
fi


if test ! $(which docker-machine)
then
   curl -L https://github.com/docker/machine/releases/download/v0.3.0/docker-machine_linux-amd64  | sudo tee /usr/local/bin/docker-machine > /dev/null
   sudo  chmod +x /usr/local/bin/docker-machine
fi
