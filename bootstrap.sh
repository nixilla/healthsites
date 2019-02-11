#!/bin/sh
apt-get update
# apt-get upgrade -y && \
apt-get install git tig mc htop git-flow vim links unzip bash-completion curl ant zsh software-properties-common -y
apt-get install binutils libproj-dev gdal-bin -y
apt-get update -y

chown vagrant:vagrant /home/vagrant/.gitconfig
