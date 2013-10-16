#!/usr/bin/env bash
# Author:  Dan Bough (daniel.bough <at> gmail <dot> com / www.danielbough.com)
# License:  GPLv3
# Copyright 2013

# Change this to the version of Ghost you want to install.
# Untested with versions outside of 0.3.2.
VERSION=0.3.2

# Only run the following if this is the first time running.
if [ ! -f /var/log/firsttime ];
then
	touch /var/log/firsttime
	sudo apt-get update

	# Get the latest version of Node.
	sudo apt-get -y install python-software-properties python g++ make
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get -y install nodejs

	# Using screen to run Ghost in the background.
	sudo apt-get install screen

	# Get Ghost and unzip it.
	sudo apt-get install unzip
	wget https://en.ghost.org/zip/ghost-$VERSION.zip
	unzip ghost-$VERSION.zip

	# Create your running config and bind server socket to all IPs.
	cp config.example.js config.js
	sed -i 's/127.0.0.1/0.0.0.0/g' config.js

	# Install Ghost.
	sudo npm install --production
fi

# Comment this out if you do not want to Ghost to automatically start.
screen -S ghost -m -d sudo npm start
