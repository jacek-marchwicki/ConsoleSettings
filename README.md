# Attention

* do not call install.sh if you are not sure that everything work fine.
* install.sh create .bak files everytime it will be invoked - its mean
that **if you call install.sh twice first version of bak file will be replaced**.
After everything goes OK you can easly repeat install command (your
old backup still will be replaced - but if everything is ok you do not
need it).

# Installation

run this commands:

    git clone https://jacek-marchwicki@github.com/jacek-marchwicki/ConsoleSettings.git ConsoleSettings
    cd ConsoleSettings
    ./install.sh

follow instructions

# Describe

files will be replaced
 * .bashrc
 * .git-completion.bash
 * .sqliterc
 * .vimrc
 * .screenrc

files will be appended
 * .gitconfig
 * .profile - if you are Mac user

