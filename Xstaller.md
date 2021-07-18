<!--  Unrar might also be of use, but seem to be non-free, so on debian it won't be on the default apt repository. -->

# Funtional
sudo apt install unzip git vim python3-pip mpv cmus neofetch 

# Optional
sudo apt install w3m gedit lxappearance awesome rofi sox suckless-tools pavucontrol youtube-dl calibre libreoffice espeak xsel wkhtmltopdf gimp inkscape xdotool

# The following do require more advance installation, but are higly recomended, they might also be available in your distribution de package manager.
# lutris https://lutris.net/downloads/
# atom https://atom.io/


# Sublime text

[Sublime 3](https://www.sublimetext.com/3)

[Sublime Last Version](https://www.sublimetext.com/download)

## To stop the update warning

> I also suggest changing the user setting to remove the auto matching 

echo "127.0.0.1 www.sublimetext.com" >> /etc/hosts

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
echo "multi edit need to be activated in preference then tool, other repository of the feature might be better" 
sudo apt install gedit-plugin-multi-edit

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

---

### To be added to this installing process
- Atom rc file
- Sublime rc file
- Terminal color theme
- pip install python common addon
