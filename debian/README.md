battery ... 
===========

echo disable > /sys/firmware/acpi/interrupts/gpe66

also see in dotfiles, for systemd

    etc/systemd/system/disable-gpe66.service

move to unstable
================

    root@pokayoke:/etc# cat .gitignore 
    /*
    !/.gitignore
    !/apt/
    /apt/trusted.gpg.d/

edit sources.list

    root@pokayoke:/etc# cat apt/sources.list
    deb hdttp://ftp.fr.debian.org/debian/ testing main contrib non-free
    deb-src http://ftp.fr.debian.org/debian/ testing main contrib non-free

upgrade
=======

    apt-get update
    apt-get dist-upgrade
    apt-get autoremove

install wifi, non buggy track
===========================

    apt-get install build-essential firmware-linux-nonfree broadcom-sta-dkms 

install sensors
===============

    apt-get lm-sensors

install pretty trackpad
=======================

    apt-get install xserver-xorg-input-mtrack
    apt-get autoremove xserver-xorg-input-synaptics

restore vim?
============

make links

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

fix cinnamon hdpi
=================

see http://www.makeuseof.com/tag/linux-hidpi-support-for-gnome-kde-xfce-cinnamon-and-firefox/

system / general / ui scalling => 2 ( hdpi )

fix browseers
=============
iceweasel
---------
layout.css.devPixelsPerPx => 2


chromium
--------
chromium --force-device-scale-factor=1.6 2>/dev/null

console
=======
is really tiny...
TODO fix this

sudo dpkg-reconfigure console-setup

( see https://help.ubuntu.com/community/MacBookPro11-1/Saucy )
