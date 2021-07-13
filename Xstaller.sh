#!/bin/bash

# Funtional
sudo apt install unrar unzip git vim python3-pip mpv cmus neofetch 

# Optional
sudo apt atom lxappearance awesome rofi lutris sox suckless-tools pavucontrol youtube-dl calibre libreoffice espeak xsel wkhtmltopdf gimp inkscape xdotool

echo Theme of the bash terminal not yet implemented

# debug
echo Atom theme and config not yet implemented

# vim 

## create pack directory
mkdir ~/.vim/pack/start

### vim pack Goyo
git clone https://github.com/junegunn/goyo.vim.git ~/.vim/pack/plug/start/
git clone https://github.com/junegunn/limelight.vim.git ~/.vim/pack/plug/start/
git clone https://github.com/AmosNimos/VIM/blob/c42dd6874ea21a8488b83df9bf9aebbf90db0bf2/.vimrc ~/

#gedit 
echo "monokai theme for gedit is in ~/.config/gedit/theme/monokai and probably need to be unziped"
git clone https://gist.github.com/LeoIannacone/71028cc3bce04567d77e ~/.config/gedit/theme/monokai

### Bashrc
git clone https://github.com/AmosNimos/bashrc/blob/9703530fee80db1b0a9c72f5bf539906b6f79e2f/.bashrc ~/
unzip bashrc.zip
mv ~/bashrc/.bashrc ~/
rm -r ~/bashrc

### Awesome Config
cp /etc/xdg/awesome/rc.lua ~/.config/awesome

# just append the keys to the default rc file
# git clone https://github.com/AmosNimos/awesome.git ~/.config/awesome

git clone https://github.com/AmosNimos/rofi-theme.git ~/.config/rofi

# rename Html2pdf
sudo ln -s /usr/bin/wkhtmltopdf /usr/local/bin/html2pdf
