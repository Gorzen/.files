#!/bin/bash
echo "Installing Lulu's config"

sudo apt install ranger

mkdir ~/.config/ranger
mkdir ~/.config/tilda

rm ~/.config/ranger/rc.conf
rm ~/.config/ranger/scope.sh

for i in {0..8}
do
	rm ~/.config/tilda/config_$i
done

rm ~/.zshrc
rm ~/.vimrc
rm ~/.gitconfig
rm ~/.dircolors
rm ~/.oh-my-zsh/custom/themes/lulu.zsh-theme

ln -s ~/.files/.zshrc ~/.zshrc
ln -s ~/.files/.vimrc ~/.vimrc
ln -s ~/.files/ranger/rc.conf ~/.config/ranger/rc.conf
ln -s ~/.files/ranger/scope.sh ~/.config/ranger/scope.sh
ln -s ~/.files/.gitconfig ~/.gitconfig
ln -s ~/.files/.dircolors ~/.dircolors
ln -s ~/.files/lulu.zsh-theme ~/.oh-my-zsh/custom/themes/lulu.zsh-theme

for i in {0..8}
do
	ln -s ~/.files/tilda/config_$i ~/.config/tilda/config_$i
done

