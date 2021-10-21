# Install add aditional apt sources
echo -ne "\e[0;31m\n"
echo "  XXXX    XXXX" 
echo "  XXXX    XXXX"
echo "   XXXX  XXXX "
echo "    XXXXXXXX  "
echo "     XXXXXX   "
echo "    XXXXXXXX  "
echo "   XXXX  XXXX "
echo "  XXXX    XXXX"
echo "  XXXX    XXXXstaller" 
echo -ne "\e[0m\n"

function auto_install(){

	sudo apt update
	
	# Add
	echo -ne "\e[0;31;43m [Add support for 32-bit architecture.] \e[0m\n"
	sudo dpkg --add-architecture i386
	
	# Install
	echo -ne "\e[0;31;43m [Install bashrc file.] \e[0m\n"
	wget "https://raw.githubusercontent.com/AmosNimos/bashrc/main/.bashrc" -O ~/.bashrc
	echo -ne "\e[0;31;43m [Install shell script.] \e[0m\n"
	mkdir ~/.shell && wget "https://raw.githubusercontent.com/AmosNimos/ani-cli/master/ani-cli" -O ~/.shell/ani-cli.sh && chmod +x ~/.shell/ani-cli.sh
	echo -ne "\e[0;31;43m [Install functional program.] \e[0m\n"
	sudo apt update && sudo apt install -y unzip git nano vim transmission blueman python3-pip suckless-tools sox ffmpeg neofetch mpv cmus bc sc ranger bash-completion
	echo -ne "\e[0;31;43m [Install optional program.] \e[0m\n"
	sudo apt update && sudo apt install -y xsel w3m gedit lxappearance rofi obs-studio pavucontrol youtube-dl calibre libreoffice espeak moc wkhtmltopdf gimp inkscape jp2a xdotool cmatrix cava tty-clock
	echo -ne "\e[0;31;43m [Install steam.] \e[0m\n"
	sudo apt update && sudo apt install -y steam && sudo apt-get upgrade steam -f
	echo -ne "\e[0;31;43m [Install games.] \e[0m\n"
	sudo apt update && sudo apt install bastet ninvaders pacman4console nsnake greed moon-buggy
	sudo apt update && sudo apt install -y hedgewars supertux pingus teeworlds
	sudo apt update && sudo apt install -y minetest supertuxkart assaultcube redeclipse sauerbraten
	echo -ne "\e[0;31;43m [Install awesome.] \e[0m\n"
	sudo apt update && sudo apt install -y awesome compton && git clone https://github.com/AmosNimos/awesome.git ~/.config/ && chmod +x ~/.config/awesome/prompt.sh ~/.config/awesome/gain.sh
	
	# Configure
	echo -ne "\e[0;31;43m [Configure.] \e[0m\n"
	mkdir ~/.config/rofi/ && git clone https://github.com/AmosNimos/rofi-theme.git ~/.config/rofi/
	mkdir ./moc ; cp /usr/share/doc/moc/examples/config.example ~/.moc/config && echo "Theme = /usr/share/moc/themes/darkdot_theme" >> ~/.moc/config
	echo -e "set linenumbers\nset tabsize 4\nset nowrap\nset mouse\nset autoindent" > ~/.nanorc
	
	#Update
	echo Update youtube-dl
	pip install update youtube-dl
	sudo apt update
	sudo apt upgrade
	exit
}

while true; do
    read -p "Automatic install? [y/n/q]:" yn
    case $yn in
        [Yy]* ) auto_install; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install add aditional apt sources
while true; do
    read -p "Add contrib and non-free to apt source? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo sed 's/non-free//g' /etc/apt/sources.list && sudo sed 's/contrib//g' /etc/apt/sources.list && sudo sed -i 's/main/main contrib non-free/g' /etc/apt/sources.list; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Support for 32-bit architecture
while true; do
    read -p "Support for 32-bit architecture? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo dpkg --add-architecture i386; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install Bashrc template
while true; do
    read -p "Install bashrc file? [y/n/q]:" yn
    case $yn in
        [Yy]* ) wget "https://raw.githubusercontent.com/AmosNimos/bashrc/main/.bashrc" -O ~/.bashrc; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install shell script
while true; do
    read -p "Install sh file? [y/n/q]:" yn
    case $yn in
        [Yy]* ) mkdir ~/.shell && wget "https://raw.githubusercontent.com/AmosNimos/ani-cli/master/ani-cli" -O ~/.shell/ani-cli.sh && chmod +x ~/.shell/ani-cli.sh; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install functional applications
while true; do
    read -p "Install functional program? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y unzip git nano vim transmission blueman python3-pip suckless-tools sox ffmpeg neofetch mpv cmus bc sc ranger bash-completion; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install optional applications
while true; do
    read -p "Install optional program? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y xsel w3m gedit lxappearance rofi obs-studio pavucontrol youtube-dl calibre libreoffice espeak moc wkhtmltopdf gimp inkscape jp2a xdotool cmatrix cava tty-clock; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install steam
while true; do
    read -p "Install steam? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install steam && sudo apt-get upgrade steam -f; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install terminal games
while true; do
    read -p "Install cli games? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install bastet ninvaders pacman4console nsnake greed moon-buggy; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install 2D games
while true; do
    read -p "Install 2D games? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y hedgewars supertux pingus teeworlds; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install 3D games
while true; do
    read -p "Install 3D games? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y minetest supertuxkart assaultcube redeclipse sauerbraten; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install awesomewm
while true; do
    read -p "Install awesome wm? [y/n/q]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y awesome compton && git clone https://github.com/AmosNimos/awesome.git ~/.config/ && chmod +x ~/.config/awesome/prompt.sh ~/.config/awesome/gain.sh; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install rofi theme
while true; do
    read -p "Install rofi theme? [y/n/q]:" yn
    case $yn in
        [Yy]* ) mkdir ~/.config/rofi/ && git clone https://github.com/AmosNimos/rofi-theme.git ~/.config/rofi/; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Install moc theme
while true; do
    read -p "Install moc theme? [y/n/q]:" yn
    case $yn in
        [Yy]* ) mkdir ./moc ; cp /usr/share/doc/moc/examples/config.example ~/.moc/config && echo "Theme = /usr/share/moc/themes/darkdot_theme" >> ~/.moc/config; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done

# Configure nano
while true; do
    read -p "Configure nano? [y/n/q]:" yn
    case $yn in
        [Yy]* ) echo -e "set linenumbers\nset tabsize 4\nset nowrap\nset mouse\nset autoindent" > ~/.nanorc; break;;
        [Nn]* ) break;;
        [Qq]* ) exit;;
        * ) echo "Please answer yes, no or quit.";;
    esac
done



