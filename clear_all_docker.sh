#!/bin/sh

## function to clear all containers and images
clearall(){
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
echo "  all images and containers deleted! "
}

echo "Do you wish to delete all containers and images enter yes or no: "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) clearall; break;;
        No ) exit;;
    esac
done

