<!--  Unrar might also be of use, but seem to be non-free, so on debian it won't be on the default apt repository. -->

# Funtional

~~~
sudo apt install unzip git vim python3-pip mpv cmus neofetch 
~~~

# Optional

~~~
sudo apt install w3m gedit lxappearance awesome rofi sox suckless-tools pavucontrol youtube-dl calibre libreoffice espeak xsel wkhtmltopdf gimp inkscape xdotool
~~~

The following do require more advance installation, but are higly recomended, they might also be available in your distribution de package manager.

[Lutris](https://lutris.net/downloads/)

> Lutris is an Open Source gaming platform for Linux.

[Atom](https://atom.io/)

> Atom is a free and open-source text and source code editor for macOS, Linux,

---

# Sublime text

[Sublime 3](https://www.sublimetext.com/3)

## Just for you lazy people a single line install.
~~~
cd /tmp && wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb && sudo dpkg -i sublime-text_build-3211_amd64.deb && rm sublime-text_build-3211_amd64.deb && echo "127.0.0.1 www.sublimetext.com" >> /etc/hosts
~~~

[Sublime Last Version](https://www.sublimetext.com/download)

## To stop the update warning

> I also suggest changing the user setting to remove the auto matching.
> And use the following command to stop the update popup. (already included in the online install)

~~~
echo "127.0.0.1 www.sublimetext.com" >> /etc/hosts
~~~

---

## vim 

### create pack directory
mkdir ~/.vim/pack/start

#### vim pack Goyo
git clone https://github.com/junegunn/goyo.vim.git ~/.vim/pack/plug/start/
git clone https://github.com/junegunn/limelight.vim.git ~/.vim/pack/plug/start/
git clone https://github.com/AmosNimos/VIM/blob/c42dd6874ea21a8488b83df9bf9aebbf90db0bf2/.vimrc ~/

## gedit 
echo "monokai theme for gedit is in ~/.config/gedit/theme/monokai and probably need to be unziped"
git clone https://gist.github.com/LeoIannacone/71028cc3bce04567d77e ~/.config/gedit/theme/monokai
echo "multi edit need to be activated in preference then tool, other repository of the feature might be better" 
sudo apt install gedit-plugin-multi-edit

### Bashrc
rm ~/.bashrc && cd ~/ && wget "https://raw.githubusercontent.com/AmosNimos/bashrc/main/.bashrc"

### Awesome Config
cp /etc/xdg/awesome/rc.lua ~/.config/awesome

## just append the keys to the default rc file
git clone https://github.com/AmosNimos/awesome.git ~/.config/awesome

git clone https://github.com/AmosNimos/rofi-theme.git ~/.config/rofi

# rename Html2pdf
sudo ln -s /usr/bin/wkhtmltopdf /usr/local/bin/html2pdf

# on Ubuntu

sudo apt install gnome-tweak-tool

---

### To be added to this installing process
- Atom rc file
- Sublime rc file
- Terminal color theme
- pip install python common addon
