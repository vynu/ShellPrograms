#!/bin/bash

while :
do	

echo ""	
echo "   Enter 1 - show all running containers"
echo "   Enter 2 - show all images"
echo "   Enter 3 - delete all containers"
echo "   Enter 4 - delete all images"
echo "   Enter 5 - Exit or quit prog "
echo ""
read -p "  Enter your option: " option
echo ""
  case $option in
	1)
		echo " ---------- All Running Containers ---------"
	        docker ps	
		;;
	2)
		echo " --------- All Images -------------"
	        docker images
		;;
	3)
		read -p " Are you sure .. delete all containers [Y/N] ? " opt1
		if [ $opt1 == "Y" -o $opt1 == "y" -o $opt1 == "yes" ]; then
	            # Stop all	containers
	            docker stop $(docker ps -a -q)	    
	            # Delete all containers
                    docker rm $(docker ps -a -q)
		    echo "containers deleted !"
	        fi    
                ;;	
	4)
		read -p " Are you sure .. delete all images [Y/N] ? " opt2
		if  [ $opt2 == "Y" -o $opt2 == "y" -o $opt2 == "yes" ]; then
		    # Delete all images
                    docker rmi -f $(docker images -q)
		    echo "All images deleted !!"
	        fi    
                ;;
	5) 
	        echo "Exiting prog .."
                break
                ;;	       
	*)
		echo "Sorry, I don't understand the option"
		;;
  esac
done
