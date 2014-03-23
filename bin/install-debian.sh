#!/usr/bin/env bash

echo "Installing required dependencies ... "
sudo add-apt-repository ppa:ondrej/php5 -y
sudo apt-get update
sudo apt-get build-dep php5-cli re2c flex bison -y
sudo apt-get install  libreadline-dev -y

echo "Installing PHPENV ..."

echo $(git clone https://github.com/unusorin/phpenv ~/.phpenv)

if [ -r ~/.bash_profile ];
then
	echo "source ~/.phpenv/bin/profile" >> ~/.bash_profile
else
	echo "source ~/.phpenv/bin/profile" >> ~/.bashrc
fi

echo "Installing VirtPHP..."

sudo ln -s $(readlink -f ~/.phpenv/bin/virtphp.phar) /usr/local/bin

echo "DONE"