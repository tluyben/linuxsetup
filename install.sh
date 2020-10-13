#!/bin/sh



sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim

sudo apt install -y i3 
sudo apt install -y cpufrequtils
sudo apt install -y python curl

cp .emacs ~/

mkdir ~/.vim

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
cp getmem ~/
chmod 755 ~/getmem

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -r .vimrc ~/

sudo cp i3status.conf /etc/

sudo ./setbattery

cp config ~/.config/i3/

i3-msg reload
killall i3bar
for c in $(i3-msg -t get_bar_config | python -c \
      'import json,sys;print("\n".join(json.load(sys.stdin)))'); do \
    (i3bar --bar_id=$c >i3bar.$c.log 2>&1) & \
done;

# X2xx 
# switch off the horrible touchpad, if we have one
#bash disabletouch 
#cat disabletouch >> ~/.bashrc 

echo Start vim and run :PlugInstall
echo If anything is wrong i3bar,just check the abvoe killall i3bar + startup for the logs of i3bar to see what's wrong exactly
