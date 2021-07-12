#!/bin/bash

# Funtional
sudo apt install unrar unzip git vim python3-pip mpv cmus neofetch 

# Optional
sudo apt lxappearance awesome rofi sox suckless-tools pavucontrol youtube-dl calibre libreoffice espeak xsel wkhtmltopdf gimp xdotool

# install sublime text

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo apt-get install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text

# Theme du terminal
echo not yet implemented

# sublime text theme/ Atome theme
echo not yet implemented

# vim 

## create pack directory
mkdir ~/.vim/pack/start

### vim pack Goyo
git clone https://github.com/junegunn/goyo.vim.git ~/.vim/pack/plug/start/
git clone https://github.com/junegunn/limelight.vim.git ~/.vim/pack/plug/start/
git clone https://github.com/AmosNimos/VIM/blob/c42dd6874ea21a8488b83df9bf9aebbf90db0bf2/.vimrc ~/


### Bashrc
git clone https://github.com/AmosNimos/bashrc/blob/9703530fee80db1b0a9c72f5bf539906b6f79e2f/.bashrc ~/
unzip bashrc.zip
mv ~/bashrc/.bashrc ~/
rm -r ~/bashrc


### Awesome Config
git clone https://github.com/AmosNimos/awesome.git ~/.config/awesome

git clone https://github.com/AmosNimos/rofi-theme.git ~/.config/rofi

# rename Html2pdf
sudo ln -s /usr/bin/wkhtmltopdf /usr/local/bin/html2pdf
