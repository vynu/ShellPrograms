#!/bin/sh

if [ "$(uname)" == "Darwin" ]
then
echo "this is mac and deleting aws ec2 ips"
sudo sed -i '' '/aws./d' /etc/hosts
else
echo "other OS deleting aws ec2 ips"
sudo sed -i '/aws./d' /etc/hosts
fi


aws --output text  ec2 describe-instances --query 'Reservations[].Instances[].[PublicIpAddress,Tags[?Key==`Name`] | [0].Value]' | sort -t',' -nk2 | sudo tee -a /etc/hosts
