#!/bin/bash

sudo dnf -y  upgrade --refresh
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf makecache
sudo dnf install docker-ce
sudo systemctl start docker
sudo usermod -aG docker fedora

sudo dnf -y install vim
