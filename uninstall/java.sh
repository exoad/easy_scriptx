#!/usr/bin/env

# Remove Java JDK and JRE
#
# Run Script:
#
# bash java.sh
# OR
# ./java.sh
#

echo -e "\e[92m> This script will not check if Java is installed, proceed? Type 1 for yes OR type 2 for no" ; echo ;
read choice

if [ "$choice" == "1" ] 
  then
  
  sudo apt remove default-jdk default-jre
  
  sudo apt autoremove

  echo -e "\e[34m> Done." ; echo ;
  exit
elif [ "$choice" == "2" ] 
  then
  
  exit
fi
