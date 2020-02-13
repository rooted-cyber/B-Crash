fol () {
	cd ~/B-Crash
	}
	final () {
		printf "\n\033[96m [√] press enter to start\n"
		read
		}
	add-s () {
		cd $PREFIX/bin
		if [ -e bcrash ];then
		printf "\n [√] Successfully create shortcut\n"
		printf "\n [√] Now you can use this command :- bcrash\n"
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
	apt update
	apt upgrade
	apt install wget
	apt install curl
	apt install python
	apt install php
	apt install curl
	pip install lolcat
	ngrok-install
	sleep 1
	unzip-file
	sleep 1
	check-file
	sleep 1
	add-s
	sleep 1
	final
	}
	ins