ATTENTION

do not call install.sh if you are not shure that everyting work fine.
install.sh create .bak files everytime it will be invoked - its mean
that if you call it twice first version of bak fille will be replaced.
After everything goes OK you can easly repeat install command (your
old backup still will be replaced - but if everyting is ok you do not
need it).

INSTALATION

git clone https://jacek-marchwicki@github.com/jacek-marchwicki/ConsoleSettings.git ConsoleSettings
cd ConsoleSettings
./install.sh
#follow instructions

DESCRIBE

filles will be replaced
.bashrc
.git-completion.bash
.sqliterc
.vimrc

files will be appended
.gitconfig
.profile if you are Mac user

