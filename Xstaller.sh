#!/bin/bash

sudo apt install unzip awesome vim python3-pip mpv cmus gimp rofi lxappearance sox suckless-tools git pavucontrol youtube-dl calibre xdotool libreoffice espeak xsel wkhtmltopdf neofetch 

# install sublime text

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo apt-get install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text

# Theme du terminal
echo not yet implemented

# sublime text theme
echo not yet implemented

# vim 

## create pack directory
mkdir ~/.vim/pack/start

### vim pack Goyo
git clone https://github.com/junegunn/goyo.vim.git ~/.vim/pack/start/
git clone https://github.com/junegunn/limelight.vim.git ~/.vim/pack/start/


### Bashrc
git clone https://github.com/AmosNimos/bashrc.git ~/
unzip bashrc.zip
mv ~/bashrc/.bashrc ~/
rm -r ~/bashrc


### Awesome Config
git clone https://github.com/AmosNimos/awesome.git ~/.config/awesome

git clone https://github.com/AmosNimos/rofi-theme.git ~/.config/rofi

echo '
" load pluggin from the pack folder
packloadall

" nnoremap
nnoremap j gj
nnoremap k gk
nnoremap /g :Goyo<CR>

" Spell map
nnoremap sa zG
nnoremap sc z= 
nnoremap ss :set spell!<CR>

" set
set number
set tabstop=4
set spell spelllang=en_us
"set nowrap

" Lime Light & Goyo setup
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
"autocmd! User GoyoLeave & q
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'DarkGray'
:map \g :Goyo <bar> <CR>
Goyo

"my custom key
"https://vim.fandom.com/wiki/Unused_keys

"save & quit
:map  <C-@> :Goyo! <bar> wq <bar> <CR> 
"quit no save
:map  <C-K> :Goyo! <bar> q! <bar> <CR>"
' > ~/.testvimrc

# rename Html2pdf
sudo ln -s /usr/bin/wkhtmltopdf /usr/local/bin/html2pdf
