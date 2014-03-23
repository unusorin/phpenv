#!/usr/bin/env bash
set -e

echo "Installing required dependencies ... "
sudo add-apt-repository ppa:ondrej/php5 -y
sudo apt-get update
sudo apt-get build-dep php5-cli re2c flex bison -y
sudo apt-get install  libreadline-dev -y

echo "Installing PHPENV ..."

git clone https://github.com/unusorin/phpenv ~/.phpenv

if [ $? -ne 0 ];
then
	echo "FAILED TO INSTALL PHPENV"
else
	if [ -r ~/.bash_profile ];
	then
		echo "source ~/.phpenv/bin/profile" >> ~/.bash_profile
	else
		echo "source ~/.phpenv/bin/profile" >> ~/.bashrc
	fi
fi