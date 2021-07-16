########################
#Author: bariscodefx
#Github: bariscodefxy
########################

#VERSION
VERSION='v1.0'

resetcolor='\e[0m'
red='\e[1;31m'
green='\e[1;32m'
yellow='\e[1;33m'
blue='\e[1;34m'
yes='y'
no='n'
clear
echo ""
echo -e "${red}
##### ###### #####  #    # #    # #    # 
  #   #      #    # ##  ## #    #  #  #  
  #   #####  #    # # ## # #    #   ##   
  #   #      #####  #    # #    #   ##   
  #   #      #   #  #    # #    #  #  #  
  #   ###### #    # #    #  ####  #    # 
                                         
 ####  #    #  ####  #####  ####  #    # 
#    # #    # #        #   #    # ##  ## 
#      #    #  ####    #   #    # # ## # 
#      #    #      #   #   #    # #    # 
#    # #    # #    #   #   #    # #    # 
 ####   ####   ####    #    ####  #    # 
                                         
# ###### ######                          
#     #  #                               
#    #   #####                           
#   #    #                               
#  #     #                               
# ###### ######                          "
echo ""
echo -e "${green}By bariscodefx ${yellow}${VERSION}"
echo ""
echo -e "${blue} [!] Do you want to run termux customize? (y/n) : "
read answer
if [ $answer != $yes ]
then
	echo -e "${resetcolor}Abort."
	exit
fi
clear
echo ""
echo -e "${red} [!] Installing Requirements ${resetcolor}"
echo ""
#Start Packages
apt update
apt upgrade -y
apt install cowsay toilet figlet ruby -y
gem install lolcat
#End Packages
clear
echo ""
echo -e "${red} [!] Packages Installed"
echo ""
echo -e "${red} [!] Customizing Termux"
echo ""
echo -e "${red}Type your want ${blue}title"
echo ""
echo -e "${green}"
read title
echo ""
echo -e "${red}Type your want ${blue}subtitle"
echo ""
echo -e "${green}"
read title2
echo ""
clear
echo "
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi

PS1='\$ '
clear
cowsay -f eyes ${title2} | lolcat
toilet -f big ${title} -F gay | lolcat" > $HOME/../usr/etc/bash.bashrc
./oh-my-zsh/install.sh
clear
echo ""
echo -e "${red}Termux Customized by ${green}bariscodefx!"
echo ""
echo -e "${red}For see changes restart termux! ${resetcolor}"
echo ""
