#!/usr/bin/env

# Menulibre is a great program for users to alter the looks and feel of their apps.
# This includes creating a launcher for certain applications and programs
#
# To use this script:
#
# bash menulibre.sh
# OR
# ./menulibre.sh
#

echo -e "\e[92m> Installing Menulibre..." ; echo -e "\e[31m> Updating Package Cache..." ;

sudo apt-get update
sudo apt-get upgrade

sudo add-apt-repository ppa:menulibre-dev/daily

sudo apt-get install menulibre

echo -e "\e[34m> Launch Menulibre right now?(y/n)" ; echo ;
read choice ;

if [ "$choice" == "y" ] || [ "$choice" == "yes" ] || [ "$choice" == "Y" ]
  then
   menulibre
   echo -e "\e[34m> Launched MenuLibre" ; echo ;
else
    exit
fi
