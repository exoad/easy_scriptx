#!/usr/bin/env

# Minecraft Launcher Installation
#
# Minecraft Launcher for the Minecraft Game
# NOTE: Requires Java, but this script will install it automatically if necessary
# Supported Arch.: Non-ARM based ONLY
#
# Run Script:
#
# bash minecraft.sh
# OR
# ./minecraft.sh
#

install_mc () {
  echo -e "\e[92m> Installing Minecraft..." ; echo ;
  
  sudo apt update
  
  wget https://launcher.mojang.com/download/Minecraft.deb
  
  sudo dpkg -i Minecraft.deb
  
  sudo apt -f install
  
  echo -e "\e[34m> Installed Minecraft" ; echo ;
}

struct=$(uname -i)
echo -e "\e[94m> Checking if system is compatible..." ; echo ;

if [[ "$struct" != arm* ]]
  then
    echo -e "\e[94m> Checking if Java is installed..." ; echo ;
    
    if [ java -version 2>&1 >/dev/null | grep "java version\|openjdk version" ]
      then
        install_mc
        
    else
      then
        echo -e "\e[92m> Installing Java" ; echo ;
        
        sudo apt update
      
        sudo apt-get install default-jdk
        
        install_mc
      exit
     fi
  exit
else
  then
    echo -e "\e[34m> Device Architecture not supported. For your system's safety, this script has been halted" ; echo ;
  exit
fi
