#!/bin/bash

echo "==========================================="
echo "ATTENTION"
echo "if you already read README file hit enter,"
echo "othervise hit ctrl+c and read README file first"
read

echo "==========================================="
echo "INSTALING"

if [ ! -e $HOME/.bashrc_private ];
then 
	if [ -e $HOME/.bashrc ];
	then
		echo "Moving private bash to $HOME/.bashrc $HOME/.bashrc_private"
		mv "$HOME/.bashrc" "$HOME/.bashrc_private"
	fi
fi

if [ -e $HOME/.bashrc ];
then
	echo "Copy of old bashrc file was created in $HOME/.bashrc.back"
	cp "$HOME/.bashrc" "$HOME/.bashrc.back"
fi

if [ -e $HOME/.vimrc ];
then
	echo "Copy of old vimrc file was created in $HOME/.vimrc.back"
	cp "$HOME/.vimrc" "$HOME/.vimrc.back"
fi

cp configs/bashrc "$HOME/.bashrc"
cp configs/vimrc "$HOME/.vimrc"

if [ "$(uname -s | grep "Darwin")" ];
then
	if [ ! "$(grep bashrc "$HOME/.profile")"];
	then
		echo "" >> "$HOME/.profile"
		echo "# ADDED AUTOMATICALY BY ConsoleSettings" >> "$HOME/.profile"
		echo ". ${HOME}/.bashrc" >> "$HOME/.profile"
		echo "" >> "$HOME/.profile"

		echo "Included .bashrc in .profile file"
	fi
fi

if [ ! "$(grep "color" "$HOME/.gitconfig")" ];
then
	echo "" >> "$HOME/.gitconfig"
	echo "[color]" >> "$HOME/.gitconfig"
	echo "	ui = true" >> "$HOME/.gitconfig"
	echo "	diff = true" >> "$HOME/.gitconfig"
	echo "" >> "$HOME/.gitconfig"
fi

if [ -e "$HOME/.git-completion.bash" ];
then
	mv "$HOME/.git-completion.bash" "$HOME/.git-completion.bash.bak"
fi

cp configs/git-completion.bash "$HOME/.git-completion.bash"

if [ -e "$HOME/.sqliterc" ];
then
	mv "$HOME/.sqliterc" "$HOME/sqliterc.bak"
fi

cp configs/sqliterc "$HOME/.sqliterc"

echo "==========================================="
echo "DONE"


echo "Now your private bashrc settings are in $HOME/.bashrc_private"
echo "You should not edit $HOME/.bashrc cause it will be replaced"
echo "while you next run this script"

echo "You have to check your $HOME/.bashrc_private"

if [ "$(uname -s | grep "Darwin")" ];
then
	echo "I suggest to set in menu:"
	echo "	terminal -> preferences -> Settings -> Homebrew"
fi

echo "==========================================="
