# Install add aditional apt sources
while true; do
    read -p "Add contrib and non-free to apt source [yn]:" yn
    case $yn in
        [Yy]* ) sudo sed 's/non-free//g' /etc/apt/sources.list && sudo sed 's/contrib//g' /etc/apt/sources.list && sudo sed -i 's/main/main contrib non-free/g' /etc/apt/sources.list; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Support for 32-bit architecture
while true; do
    read -p "Support for 32-bit architecture [yn]:" yn
    case $yn in
        [Yy]* ) sudo dpkg --add-architecture i386; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install Bashrc template
while true; do
    read -p "Install bashrc file [yn]:" yn
    case $yn in
        [Yy]* ) wget "https://raw.githubusercontent.com/AmosNimos/bashrc/main/.bashrc" -O ~/.bashrc; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install shell script
while true; do
    read -p "Install sh file [yn]:" yn
    case $yn in
        [Yy]* ) mkdir ~/.shell && wget "https://raw.githubusercontent.com/AmosNimos/ani-cli/master/ani-cli" -O ~/.shell/ani-cli.sh && chmod +x ~/.shell/ani-cli.sh; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install functional applications
while true; do
    read -p "Install functional program [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y unzip git nano vim transmission blueman python3-pip suckless-tools sox ffmpeg neofetch mpv cmus bc sc ranger bash-completion; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install optional applications
while true; do
    read -p "Install optional program [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y xsel w3m gedit lxappearance rofi obs-studio pavucontrol youtube-dl calibre libreoffice espeak moc wkhtmltopdf gimp inkscape jp2a xdotool; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install steam
while true; do
    read -p "Install steam [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install steam && sudo apt-get upgrade steam -f; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install terminal games
while true; do
    read -p "Install cli games [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install bastet ninvaders pacman4console nsnake greed moon-buggy; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install 2D games
while true; do
    read -p "Install 2D games [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y hedgewars supertux pingus teeworlds; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install 3D games
while true; do
    read -p "Install 3D games [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y minetest supertuxkart assaultcube redeclipse sauerbraten; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install terminal ricing program
while true; do
    read -p "Install rice program [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y cmatrix cava tty-clock; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install awesomewm
while true; do
    read -p "Install awesome wm [yn]:" yn
    case $yn in
        [Yy]* ) sudo apt update && sudo apt install -y awesome compton && git clone https://github.com/AmosNimos/awesome.git ~/.config/ && chmod +x ~/.config/awesome/prompt.sh ~/.config/awesome/gain.sh; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Install rofi theme
while true; do
    read -p "Install rofi theme [yn]:" yn
    case $yn in
        [Yy]* ) mkdir ~/.config/rofi/ git clone https://github.com/AmosNimos/rofi-theme.git ~/.config/rofi/; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Configure nano
while true; do
    read -p "Configure nano [yn]:" yn
    case $yn in
        [Yy]* ) echo -e "set linenumbers\nset tabsize 4\nset nowrap\nset mouse\nset autoindent" > ~/.nanorc; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done




