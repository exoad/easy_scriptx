# NodeJS Installation
#
# Install NodeJS and NPM package manager on your system.
# You may follow these commands from the NodeJS docs to stay up to date: https://github.com/nodesource/distributions/blob/master/README.md
#
# Currently listed versions in this runnable: 16x, 14x, 12x
#
# To run this script:
#
# bash nodejs.sh
# OR
# ./nodejs.sh

echo -e "\e[92m> Installing NodeJS" ; echo ;
echo -e "\e[34m> Type a version number: 16, 14, 12" ; echo ;
read choice

if [ "$choice" == "16" ] || [ "$choice" == "16x" ]
  then
    curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt-get install -y nodejs
    
    echo -e "\e[31m> Installed NodeJS" ; echo ; node -v ;
  exit
elif [ "$choice" == "14" ] || [ "$choice" == "14x" ]
  then
    curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install -y nodejs
    
    echo -e "\e[31m> Installed NodeJS" ; echo ; node -v ;
    
  exit 
elif [ "$choice" == "12" ] || [ "$choice" == "12x" ]
  then
    curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install -y nodejs
    
    echo -e "\e[31m> Installed NodeJS" ; echo ; node -v ;
  exit
fi
