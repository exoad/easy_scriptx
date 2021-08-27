#!/usr/bin/env
#
# What is this?
#
# This is to install the latest version of Java onto your system.
# What is Java? Check it out here: https://en.wikipedia.org/wiki/Java_(software_platform)
#
# You can use Java for many different things, such as playing Minecraft, coding your own programs, and more.
#
# To run this script, you can either click on it and run it in terminal or go into terminal and run these commands
#
# cd <directory where this file is located> && bash java.sh
#
# If this process works, then you should get a green text saying: "Installing Java Now"
#
# For support head over to: https://github.com/Yttrium-Terminus/common_scripts/issues
#

echo -e "\e[92m> Installing Java Now..." ; echo ;

sudo apt-get update -y

sudo apt upgrade -y

echo -e "\e[31m> Up to date" ; echo ;

sudo apt install default-jdk -y

sudo apt install default-jre -y

echo -e "\e[34m> Installed Java!" ; echo ;

java --version
