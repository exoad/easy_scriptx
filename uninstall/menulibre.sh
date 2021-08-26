#!/usr/bin/env

# Uninstalls MenuLibre

echo -e "\e[92m> Are you sure you want to uninstall Menulibre? (y/n)"
read choice ; 
if [ "$choice" == "y" ] || [ "$choice" == "Y" || [ "$choice" == "yes" ]
  then
    sudo apt-get remove menulibre
    echo -e "\e[34m> Uninstalled Menulibre"
  exit
fi
