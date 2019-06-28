#!/bin/sh



sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

sudo apt install i3 
sudo apt cpufrequtils


#cd /tmp; git clone git@github.com:philippnormann1337/xrandr-brightness-script.git; cd -

sudo cp brightness /usr/local/bin/
sudo chmod 755 /usr/local/bin/brightness

cp customstatus ~/
chmod 755 ~/customstatus
cp getbrightness ~/
chmod 755 ~/getbrightness 
cp getvolume ~/
chmod 755 ~/getvolume
cp getmute ~/
chmod 755 ~/getmute 
cp getfreqs ~/
chmod 755 ~/getfreqs


curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -r .vimrc ~/

sudo cp i3status.conf /etc/

sudo ./setbattery

cp config ~/.config/i3/

i3-msg reload
