# This file is not to be used by any user and is only here to guide me and/or quickly allow me to use certain components of code

# Not ARM
struct=$(uname -i)
echo -e "\e[94m> Checking if system is compatible..." ; echo ;

if [[ "$struct" != arm* ]]
  then
  
  exit
else
    echo -e "\e[34m> Device Architecture not supported. For your system's safety, this script has been halted" ; echo ;
  exit
fi
