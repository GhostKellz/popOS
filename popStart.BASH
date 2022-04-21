#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
cd Downloads

wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.18-rc1/amd64/linux-headers-5.18.0-051800rc1_5.18.0-051800rc1.202204032230_all.deb

wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.18-rc1/amd64/linux-headers-5.18.0-051800rc1-generic_5.18.0-051800rc1.202204032230_amd64.deb

wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.18-rc1/amd64/linux-image-unsigned-5.18.0-051800rc1-generic_5.18.0-051800rc1.202204032230_amd64.deb

wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.18-rc1/amd64/linux-modules-5.18.0-051800rc1-generic_5.18.0-051800rc1.202204032230_amd64.deb

sudo dpkg -i *.deb

sudo update-grub

cd ~
mkdir .icons
mkdir .themes

sudo apt install gnome-tweaks
sudo apt install gnome-shell extensions
sudo apt install chrome-gnome-shell
sudo apt install neofetch
sudo apt install vim
sudo apt install git 

cd Downloads

git clone https://github.com/vinceliuice/Colloid-gtk-theme.git

cd /home/ck/Downloads/Colloid-gtk-theme-main

./install.sh --tweaks dracula

rm -r /home/ck/Downloads/Colloid-gtk-theme-main
rm -r /home/ck/Downloads/Colloid-gtk-theme-main.zip



sudo shutdown -r now
