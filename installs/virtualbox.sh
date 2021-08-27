#!/usr/bin/env

# Virtual Box Installation
#
# Virtual Box for virtual machine
#
# Run this script with:
#
# bash virtualbox.sh
# OR
# ./virtualbox.sh
#
struct=$(uname -i)
echo -e "\e[94m> Checking if system is compatible..." ; echo ;

if [[ "$struct" != arm* ]]
  then
    echo -e "\e[92m> Installing VirtualBox..." ; echo ;

    sudo apt update 

    echo -e "\e[34m> Fetching repo keys..." ; echo ;

    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

    echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

    echo -e "\e[34m> Updating Package Cache..." ; echo ;

    sudo apt update

    sudo apt install virtualbox-6.0

    echo -e "\e[31m> Installed VirtualBox 6.0" ; echo "> Would you like to launch it now? (y/n)" ; echo ;

    read choice 



    if [ "$choice" == "y" ] || [ "$choice" == "Y" ]
      then
        virtualbox
        echo -e "\e[92m> Launched VirtualBox" ; echo ;
      exit
    else
      then
      exit
    fi 
  exit
else
  then
    echo -e "\e[34m> Device Architecture not supported for your system's safety..." ; echo ;
  exit
fi
