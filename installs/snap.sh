#!/usr/bin/env

# Snap Packager and Deployment
#
# Install Snap to easily install a wide variety of programs on your system
#
# Run this script:
# 
# bash snap.sh
# OR
# ./snap.sh
#

struct=$(uname -i)
echo -e "\e[94m> Checking if system is compatible..." ; echo ;

if [[ "$struct" != arm* ]]
  then
    echo -e "\e[34m> Installing Snap..." ; echo ;
    
    sudo apt update
    
    sudo apt install snapd
    
    echo -e "\e[34m> Installed Snap. Use 'sudo snap install <package_name>' to install programs" ; echo ;
    
  exit
else
    echo -e "\e[34m> Device Architecture not supported. For your system's safety, this script has been halted" ; echo ;
  exit
fi
