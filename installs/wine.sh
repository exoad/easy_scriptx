#!/usr/bin/env

# Installing Wine
#
# Wine is a way for Linux to run Window's compatible applications. 
# Note: everything here will be most compatible if your device is using Debian 10
#
# Run this script:
#
# bash wine.sh
# OR
# ./wine.sh
#

echo -e "\e[92m> Installing Wine" ; echo ;

sudo apt update
echo -e "\e[34m> Updated Package Cache..." ; echo ;

sudo apt -y install gnupg2 software-properties-common

wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -

echo -e "\e[34m> Fetched GPG key(s)" ; echo ;

sudo apt-add-repository https://dl.winehq.org/wine-builds/debian/

sudo apt update

wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | sudo apt-key add -  

echo "deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./" | sudo tee /etc/apt/sources.list.d/wine-obs.list

echo -e "\e[92m> Fetched the repo" ; echo ;

sudo apt update

echo -e "\e[34m> Type 1 to install the stable version OR type 2 to install the staging version" ; echo ;
read choice

if [ "$choice" == "1" ] 
  then
    sudo apt install --install-recommends winehq-stable
    
    wine --version
    
    echo -e "\e[92m> Installed Wine Stable" ; echo ;
    
    echo -e "\e[34m> Would you like to launch it now? (y/n)" ; echo ;
    
    read c
    
    if [ "$c" == "y" ] || [ "$c" == "Y" ]
      then
        virtualbox
        echo -e "\e[31m> Launched VirtualBox" ; echo ;
      exit
    else
      then
      exit
    fi
    
  exit
elif [ "$choice" == "2" ] 
  then
    sudo apt install winehq-staging
    
    wine --version 
    
    echo -e "\e[92m> Installed Wine Staging" ; echo ;
    
        echo -e "\e[34m> Would you like to launch it now? (y/n)" ; echo ;
    
    read c
    
    if [ "$c" == "y" ] || [ "$c" == "Y" ]
      then
        virtualbox
        echo -e "\e[31m> Launched VirtualBox" ; echo ;
      exit
    else

      exit
    fi
  exit
fi

