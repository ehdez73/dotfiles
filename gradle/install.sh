#!/bin/bash
export GRADLE_VERSION='2.4'
if test $(which gradle)
then
	echo "Gradle already installed"
	echo `gradle -version`
else	
	echo "gradle version: $GRADLE_VERSION"

	wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-all.zip
    unzip gradle-$GRADLE_VERSION-all.zip
	sudo mkdir -p /opt/gradle
	sudo mv gradle-$GRADLE_VERSION /opt/gradle/.
	sudo ln -s /opt/gradle/gradle-$GRADLE_VERSION/ /opt/gradle/gradle
	printf '%s\n%s\n' 'export GRADLE_HOME=/opt/gradle/gradle' 'export PATH=$GRADLE_HOME/bin:$PATH' >> gradle.sh
	sudo mv gradle.sh /etc/profile.d/gradle.sh
fi