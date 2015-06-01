#!/bin/sh

if test /opt/springsource/sts-bundle/
then
	echo "Found STS installation at /opt/springsource/sts-bundle"
else
	echo "Installing Spring Tool Suite"
	wget http://dist.springsource.com/release/STS/3.6.4.RELEASE/dist/e4.4/spring-tool-suite-3.6.4.RELEASE-e4.4.2-linux-gtk-x86_64.tar.gz
	tar zxvf spring-tool-suite-3.6.4.RELEASE-e4.4.2-linux-gtk-x86_64.tar.gz
	sudo mkdir -p /opt/springsource
	sudo mv sts-bundle /opt/springsource/.
	ln -s $(pwd)/sts.desktop ~/.local/share/applications/sts.desktop
fi

if test $(wich spring)
then
	echo "Found Spring CLI"
else
	echo "Installing Spring CLI"
	curl https://start.spring.io/install.sh | sh
fi

