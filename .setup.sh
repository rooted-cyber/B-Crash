fol () {
	cd ~/B-Crash
	}
	final () {
		printf "\n\033[96m [√] press enter to start\n"
		read
		fol
		bash bc.sh
		}
	add-s () {
		cd $PREFIX/bin
		if [ -e bcrash ];then
		printf "\n\033[93m [√] Successfully create shortcut\n"
		printf "\n [√] Now you can use this command :- \033[0mbcrash\n"
		else
		echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/bcrash
		echo "cd ~/B-Crash" >> $PREFIX/bin/bcrash
		echo "bash bc.sh" >> $PREFIX/bin/bcrash
		chmod 777 $PREFIX/bin/bcrash
		add-s
		fi
		}
		
	unzip-file () {
		fol
		if [ -e bc.html ];then
		printf "\n\033[92m [√] Successfully unzip .a.zip\n"
		sleep 2
		else
		printf "\n\n\033[96m [+] Now unzipping .a.zip\n\n"
		sleep 2
		unzip .a.zip
		unzip-file
		fi
		}
	check-zip () {
		fol
		if [ -e ngrok ];then
		printf "\n\033[95m Successfully Ngrok unziped\n"
		else
		printf "\n\n\033[93m Not unzipped\n"
		printf "\n [+] Unziping ngrok.zip\n"
		sleep 2
		unzip ngrok.zip
		check-zip
		fi
		}
ngrok-install () {
	clear
	fol
	if [ -e ngrok.zip ];then
	printf "\n\033[96m [√] Already Download ngrok.zip\n\n"
	sleep 1
	printf "[+] Now Checking...\n"
	sleep 3
	check-zip
	else
	printf "\n\033[92m [+] Downloading ngrok.zip....\n\n\033[0m"
	wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip
	sleep 1
	check-zip
	fi
	}
ins () {
	clear
	printf "\n\n\033[91m [+] Requirements installing....\n\n\033[92m"
	sleep 1
	printf "[+] Updating all packages....\n\n\033[0m"
	sleep 1
	apt update
	apt upgrade
	clear
	printf "\033[93m [+] Installing wget....\033[0m\n\n"
	sleep 1
	apt install wget
	clear
	printf "\033[94m [+] Installing curl....\033[0m\n\n"
	sleep 1
	apt install curl
	clear
	printf "\033[95m [+] Installing python....\033[0m\n\n"
	sleep 1
	apt install python
	clear
	printf "\033[96m [+] Installing php....\033[0m\n\n"
	sleep 1
	apt install php
	clear
	printf "\033[95m [+] Installing lolcat ....\033[0m\n\n"
	sleep 1
	pip install lolcat
	clear
	printf "\033[93m [+] Installing figlet & toilet....\033[0m\n\n"
	sleep 1
	apt install toilet
	apt install figlet
	ngrok-install
	sleep 1
	unzip-file
	sleep 1
	sleep 1
	add-s
	sleep 1
	final
	}
	ins