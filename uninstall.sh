clear
echo ""
echo -e "\e[1;31mDo you really want to uninstall? (y/n)"
echo ""
read answer
if [ $answer != 'y' ]
then
	echo -e "\e[0mAbort."
	exit
fi
cp -r ./bash.bashrc $HOME/../usr/etc/bash.bashrc
clear
echo ""
echo -e "\e[1;32mSuccessfully uninstalled! Restart termux."
echo ""

