#!bin/sh

sudo su -

yum update && yum upgrade

yum -y install net-tools
yum -y install wget

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

rpm -ivh epel-release-latest-7.noarch.rpm

yum -y install epel-release

yum -y install python

yum -y install python-pip

pip  install --upgrade pip

 pip install markupsafe
 pip install xmltodict
 pip install pywinrm

yum -y install ansible
