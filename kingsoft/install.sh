#!/bin/sh

if test ! $(which wps)
then
	echo "  Installing KingSoft"
	wget http://kdl.cc.ksosoft.com/wps-community/download/a18/wps-office_9.1.0.4961~a18p1_i386.deb
	sudo gdebi wps-office_9.1.0.4945~a16p3_i386.deb
	rm wps-office_9.1.0.4945~a16p3_i386.deb

	sudo apt-get install libqt4-dev

	source ../git/install.sh

	echo " Installing spanish language"
	git clone https://github.com/wps-community/wps_i18n.git
	cd wps_i18n/es_ES
	make && sudo make install
	cd ../..
	rm -rf wps_i18n
fi
