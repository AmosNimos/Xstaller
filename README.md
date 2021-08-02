<!--  Unrar might also be of use, but seem to be non-free, so on debian it won't be on the default apt repository. -->

# Install my bashrc
~~~
cd && rm ~/.bashrc && cd ~/ && wget "https://raw.githubusercontent.com/AmosNimos/bashrc/main/.bashrc"
~~~

# Funtional

~~~
sudo apt update && apt install -y unzip git nano vim neofetch transmission python3-pip suckless-tools sox mpv cmus ffmpeg steam
~~~

> If after the install, you want to know more about any of those package, simply use the __man__ command (man is for manual) followed by the package name.

# Programme Descriptions

- Git
> (Git is software for tracking changes in any set of files, usually used for coordinating work among programmers collaboratively developing source code during software development. Its goals include speed. data integrity, and support for distributed, non-linear workflows.)

- Nano & Vim
> (Nano & Vim Are two different minimalistic text editor that run on your terminal/terminal-emulator.)

- Transmission 
> (Transmission is a BitTorrent client which features a variety of user interfaces on top of a cross-platform back-end. Transmission is free software licensed under the terms of the GNU General Public License, with parts under the MIT License.)

- Pip
> (Pip is the standard package manager for Python. It allows you to install and manage additional packages that are not part of the Python standard library. This tutorial is an introduction to pip for new Pythonistas.)

- Suckless-tools
> (This package provides simple commands designed to be used with a minimalistic window manager like dwm but they can be useful in scripts regardless of the window manager used.)

- Sox 
> (SoX is a cross-platform (Windows, Linux, MacOS X, etc.) command line utility that can convert various formats of computer audio files in to other formats. It can also apply various effects to these sound files, and, as an added bonus, SoX can play and record audio files on most platforms.)

- Ffmpeg
> (FFmpeg is a free and open-source software project consisting of a large suite of libraries and programs for handling video, audio, and other multimedia files and streams. At its core is the FFmpeg program itself, designed for command-line-based processing of video and audio files.)

- neofetch
> (Neofetch is mainly developed to be used in screenshots of your system. It currently supports 150+ operating systems including Linux, BSD, Mac OS X, iOS, and Windows.)

# Optional

~~~
sudo apt update && apt install -y xsel w3m gedit lxappearance awesome rofi obs-studio pavucontrol youtube-dl calibre libreoffice espeak  wkhtmltopdf gimp inkscape xdotool
~~~

---

The following do require more advance installation, but are higly recomended, they might also be available in your distribution de package manager.

[Lutris](https://lutris.net/downloads/)

> Lutris is an Open Source gaming platform for Linux.

[Atom](https://atom.io/)

> Atom is a free and open-source text and source code editor for macOS, Linux,

---

# Sublime 3

[Sublime 3](https://www.sublimetext.com/3)

### Single line install of sublime 3
~~~
cd /tmp && wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb && sudo dpkg -i sublime-text_build-3211_amd64.deb && rm sublime-text_build-3211_amd64.deb
~~~

## Manual install of sublime 3

[Sublime Last Version](https://www.sublimetext.com/download)

> I also suggest changing the user setting to remove the auto matching.

### To stop the update warning of sublime 3

~~~
echo "127.0.0.1 www.sublimetext.com" >> /etc/hosts
~~~

> If you get a __Permission denied__ use instead: 

~~~
sudo nano /etc/hosts
~~~
> Then paste:
~~~
"127.0.0.1 www.sublimetext.com"
~~~
> Don't forget to __save__ your change to the hosts file (The default shortcut should be __ctrl-o__).

---
