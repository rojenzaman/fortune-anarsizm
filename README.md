Kara Terminal (fortune-anarsizm)
============
This is a project to have Turkish-speaking political fortunes in unix.
This project forked for Turkish speakers from [Blag Fortune](https://notabug.org/PangolinTurtle/BLAG-fortune).

Requirements
------------
All you need is fortune mod. On Debian-based systems:

    $ sudo apt-get install fortune-mod

On Fedora-based systems:
    $ sudo dnf install fortune-mod

Installation
------------
To install:

    $ sudo make install distro=debian

To uninstall:

    $ sudo make uninstall distro=debian

Where distro=debian should be replaced with your distribution's name. For example, on Fedora say distro=fedora.

For supported distribution options, [look here](DISTROS.md).

Running
-------
To run the program, simply say

    $ fortune anarsizm
    Her emir özgürlüğün suratında patlayan bir tokattır.
    		-- Mikhail Bakunin

Here is a more whimsical example:

    $ fortune anarsizm | cowsay
     _________________________________________
    / Haydi, yıkıcı ve imha edici sonsuz ruha \
    | güvenelim, çünkü bu bilinmez ve sonsuz  |
    | ruh, tüm hayatın kaynağıdır. Yıkma      |
    | güdüsü, aynı zamanda yaratıcı bir       |
    | güdüdür.                                |
    |                                         |
    \ -- Mikhail Bakunin                      /
     -----------------------------------------
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||

Show fortunes on Bash startup
-----------------------------
> I want to see fortunes when my terminal starts, as in BLAG 140000!

To do this quickly, enter the following command:

    $ echo -e "\nfortune -s anarsizm\necho" >> $HOME/.bashrc

To disable the fortunes, remove these lines from $HOME/.bashrc:

    fortune -s anarsizm
    echo

Quote Sources
-------------
I have several sources for most of my quotes:
- [Vikisöz](https://tr.wikiquote.org)
- [Anarşist Kütüphane](tr.anarchistlibraries.net)
- [@anarsist_sozler](https://twitter.com/anarsist_sozler)
- [1000kitap](https://1000kitap.com)

Unfortunately some writings do not have an Turkish translation, so I rely on machine translations from other various sources.
