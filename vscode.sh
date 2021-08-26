# VSCode Script
#
# VSCode is text editor and mainly directed towards programmers
# Use this script with:
#
# bash vscode.sh
# OR
# ./vscode.sh
#

echo -e "\e[92m> Installing VSCode..." ; echo ;

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

sudo apt install apt-transport-https

echo -e "\e[31m> Updating Cache..." ; echo ;

sudo apt update
sudo apt-get upgrade

echo -e "\e[1m> Type 1 to install regular VSCode or type 2 to install VSCode-Insiders: ";
read choice;

if [ "$choice" == "1" ]
  then
    echo -e "\e[34m> Installing VSCode-Main" ; echo;
    sudo apt install code
    echo -e "\e[92m> Success" ; echo ;
    exit
elif [ "$choice" == "2" ]
  then
    echo -e "\e[34m> Installing VSCode-Insiders" ; echo;
    sudo apt install code-insiders
    echo -e "\e[92m> Success" ; echo ;
    exit
fi
