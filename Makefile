# This Makefile creates symlinks in dotfiles in ~ to the files in this folder.
# If you already have dotfiles in you ~ dir then run : make clean to remove old
# files first.

bash: ~/.bashrc ~/.bash_profile ~/.profile ~/.zshrc
@echo Linking bashrc, bash_profile, profile, zshrc
~/.profile:
	ln -s $(PWD)/bash/profile $@
~/.bashrc:
	ln -s $(PWD)/bash/bashrc $@
~/.bash_profile:
	ln -s $(PWD)/bash/bash_profile $@
~/.zshrc:
	ln -s $(PWD)/bash/zshrc $@

vim: ~/.vimrc ~/.vim
@echo Linking vimrc and vim
~/.vimrc:
	ln -s $(PWD)/vim/vimrc $@
~/.vim:
	rm -rf $@
	ln -s $(PWD)/vim/vim $@

git: ~/.gitattributes ~/.gitconfig
~/.gitattributes:
	ln -s $(PWD)/git/gitattributes $@
~/.gitconfig:
	cp git/gitconfig $@

clean:
	rm -rf ~/.bashrc ~/.bash_profile ~/.profile ~/.zshrc
	rm -rf ~/.vimrc ~/.vim
	rm -rf ~/.gitattributes ~/.gitconfig

