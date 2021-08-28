#!/usr/bin/env
#
# NOTICE: THIS IS A VERY BUGGY AND NON-USERFRIENDLY SCRIPT IF YOU ARE NOT USING THE VANILLA SCRIPT. THIS MEANS THIS SCRIPT CAN BECOME VERY 
# DIFFICULT TO OPERATE IF YOU MODIFY THE WGET AND FOLLOWING. IF YOU HAVE ISSUES, PLEASE LEAVE THEM HERE: https://github.com/Yttrium-Terminus/common_scripts/issues
#
# IntelliJ Java IDE Installation
#
# This script will download the free Community Edition of IntelliJ Java IDE
# If you do not have Java installed, this script will automatically install Java JDK 8 for you
#
# This script will not be updated constantly with the most current direct download link, so feel free to link your own direct download link 
# on line 26 and also edit the file name accordingly on line 28 along with line 31
#
# Run Script:
#
# bash intellij.sh
# OR
# ./intellij.sh
#

struct=$(uname -i)
echo -e "\e[94m> Checking if system is compatible..." ; echo ;

if [[ "$struct" != arm* ]]
  then
    echo -e "\e[92m> Fetching files from IntelliJ..." ; echo ;
    
    #you may replace this direct download link with the latest version
    wget https://download-cf.jetbrains.com/idea/ideaIC-2021.2.tar.gz
    
    #edit this file name if you changed the wget
    tar -xf ideaIC-2021.2.tar.gz

    #edit this file extraction of idea-IC-*
    cd idea-IC-212.4746.92/bin && ./idea.sh
    
    ./idea.sh
    
    echo -e "\e[34m> Installed & Launched IntelliJ Community Edition" ; echo ;
  exit
else
    echo -e "\e[34m> Device Architecture not supported. For your system's safety, this script has been halted" ; echo ;
  exit
fi
