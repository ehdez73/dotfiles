#!/bin/sh

if test ! $(which javac)
then
  echo "Installing JDK. 8u40"
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.tar.gz
  tar zxvf jdk-8u40-linux-x64.tar.gz
  sudo mkdir -p /opt/java/
  sudo mv jdk1.8.0_40 /opt/java
  sudo rm /opt/java/jdk
  sudo ln -s /opt/java/jdk1.8.0_40  /opt/java/jdk
  printf '%s\n%s\n' 'export JAVA_HOME=/opt/java/jdk' 'export PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile.d/java.sh
fi

