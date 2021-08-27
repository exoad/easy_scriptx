#!/usr/bin/env

# Installing Pip
#
# Pip is a package manager for the Python language
#
# You need either Python2 or Python3 
#
# Run script:
#
# bash pip.sh
# OR
# ./pip.sh
#

install_pip2 () {
  echo -e "\e[34m> Installing Pip for Python 2..." ; echo ;
  
  sudo apt update
  
  sudo apt install python-pip
  
  echo -e "\e[34m> Installed pip for Python 2" ; echo ;
  
  pip --version

}

install_pip3 () {
  echo -e "\e[34m> Installing Pip for Python 3..." ; echo ;
  
  sudo apt update
  
    sudo apt install python3-pip
  
  echo -e "\e[34m> Installed pip for Python 3" ; echo ;
  
  pip3 --version
}

struct=$(uname -i)
echo -e "\e[94m> Checking if system is compatible..." ; echo ;

if [[ "$struct" != arm* ]]
  then
    echo -e "\e[92m> Type 'py2' to install for Python2 OR type 'py3' to install for Python3" ; echo ;
    read choice
    
    if [ "$choice" == "py2" ] || [ "$choice" == "Py2" ] || [ "$choice" == "python2" ] || [ "$choice" == "2" ]
      then
      
      exit
    elif [ "$choice" == "py3" ] || [ "$choice" == "Py3" ] || [ "$choice" == "python3" ] || [ "$choice" == "3" ]
      then
      
      exit
    fi
  exit
else
  then
    echo -e "\e[34m> Device Architecture not supported. For your system's safety, this script has been halted" ; echo ;
  exit
fi
