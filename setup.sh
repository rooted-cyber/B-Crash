echo -e "\033[96m Please wait some time......"
sleep 5
cd $HOME
chmod 700 *
apt update
apt upgrade
apt-get install toilet
apt-get install ruby
pkg install ruby
gem install lolcat
apt-get install curl
apt-get install wget
apt-get install php
apt-get install openssh
apt install apache2
clear
termux-setup-storage
echo -e "\033[93m Requirement installed"
sleep 3
cd $HOME/B-Crash
chmod 700 *
unzip bc.zip
cp -f bc.html $PREFIX/share/apache2/default-site/htdocs
cp -f bcrash $PREFIX/bin
chmod 777 $PREFIX/bin/bcrash
echo
echo -e "\033[93m Now you can start B-Crash this commnd :- \033[92m bcrash\e[0m"
echo
echo -e "\033[93m And cd B-Crash;bash bc.sh"
echo
echo "Press enter to start B-Crash"
read
gem install lolcat
click
