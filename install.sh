#!/bin/sh

apt install -y i3 

cd /tmp; git clone git@github.com:philippnormann1337/xrandr-brightness-script.git; cd -

sudo cp /tmp/xrandr-brightness-script/brightness.sh /usr/local/bin/brightness
sudo chmod 755 /usr/local/bin/brightness

cp -r .vimrc ~/

sudo cp i3status.conf /etc/
cp config ~/.config/i3/

i3-msg reload