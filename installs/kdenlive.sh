#!/usr/bin/env
#
# KDenLive Video Editor Installation
#
# This script will help you install the KDenLive Free Open Source Video Editor
#
# Run this script:
#
# bash kdenlive.sh
# OR
# ./kdenlive.sh
# 

install_kdel() {
  echo -e "\e[31m> Adding the repository..." ; echo ;
  
  sudo add-apt-repository ppa:kdenlive/kdenlive-stable
  
  sudo apt update
  
  sudo apt install kdenlive
  
  echo -e "\e[34m> Installed KDenLive" ; echo ;
}

struct=$(uname -i)
echo -e "\e[34m> Checking if system is compatible..." ; echo ;

if [[ "$struct" != arm* ]]
  then
    echo -e "\e[92m> Installing KDenLive..." ; echo ;
    
    sudo apt update
    
    echo -e "\e[31m> Checking if snap is installed..." ;
    
    # revisions needed
    if [ snap version ] 
      then 
        echo -e "\e[92m> Snap is installed. Proceeding to install program with snap..." ; echo ;
        
        sudo snap install kdenlive
        
        echo -e "\e[34m> Installed KDenLive" ; echo ;
        
      exit
    else
      then
        install_kdel
      exit
    fi
  exit
else
  then
    echo -e "\e[34m> Device Architecture not supported. For your system's safety, this script has been halted" ; echo ;
  exit
fi
