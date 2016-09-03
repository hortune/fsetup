#!/bin/bash
#install nvm 
dir_loca=$(pwd)
#echo $0
echo "starting apt installation"
./apt_install.sh
cd $dir_loca

echo "install dotfile"
cd ~
git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && source bootstrap.sh
cd $dir_loca

echo "starting install nvm"
./node_install.sh

echo "install npm"
sudo apt-get -y install python-software-properties
sudo add-apt-repository ppa:gias-kay-lee/npm
sudo apt-get -y update
sudo apt-get -y install npm

echo "install python2.7 pip"
sudo apt-get update
sudo apt-get -y install python2.7 python-pip python-dev git libssl-dev build-essential libffi-dev
sudo pip install --upgrade pwntools

echo "install ipython"
sudo pip install ipython
#File="npm_install"
#exec 3<&0                      # save current stdin
#exec 0<"$FILE"                 #   and change it to read from file.

#while read -r line ; do        # read every line from stdin (currently file).
#  npm install -G $line            #   and process it.
#done

#exec 0<&3                      # restore previous stdin.
#IFS=$BAKIFS                    #   and IFS.