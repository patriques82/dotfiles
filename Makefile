# This Makefile creates symlinks in dotfiles in ~ to the files in this folder.
# If you already have dotfiles in you ~ dir then run : make clean to remove old
# files first.

bash: ~/.bashrc ~/.bash_profile ~/.profile ~/.zshrc

~/.bashrc:
	echo "Removing/Installing dotfiles for bash..."
	rm -f $@
	ln -s $(PWD)/bash/bashrc $@

~/.bash_profile:
	rm -f $@
	ln -s $(PWD)/bash/bash_profile $@

~/.profile:
	rm -f $@
	ln -s $(PWD)/bash/profile $@

~/.zshrc:
	rm -f $@
	ln -s $(PWD)/bash/zshrc $@

vim: ~/.vimrc ~/.vim

~/.vimrc:
	echo "Removing/Installing dotfiles for vim..."
	rm -f $@
	ln -s $(PWD)/vim/vimrc $@

~/.vim:
	rm -rf $@
	ln -s $(PWD)/vim/vim $@

git: ~/.gitattributes ~/.gitconfig

~/.gitattributes:
	echo "Removing/Installing dotfiles for git..."
	rm -f $@
	ln -s $(PWD)/git/gitattributes $@

~/.gitconfig
	rm -f $@
	ln -s $(PWD)/git/gitconfig $@

clean:
	rm -rf ~/.bashrc ~/.bash_profile ~/.profile ~/.zshrc
	rm -rf ~/.vimrc ~/.vim
	rm -rf ~/.gitattributes ~/.gitconfig

