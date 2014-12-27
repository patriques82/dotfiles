# This Makefile creates symlinks in dotfiles in ~ to the files in this folder.
# If you already have dotfiles in you ~ dir then run : make clean to remove old
# files first.

# dependencies:
#   sudo apt-get install curl

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
	rm -f $@
	ln -s $(PWD)/vim/vimrc $@

~/.vim:
	echo "Removing/Installing dotfiles for vim..."
	rm -rf $@
	cp $(PWD)/vim/vim $@


clean:
	rm -rf ~/.bashrc ~/.bash_profile ~/.profile ~/.zshrc
	rm -rf ~/.vimrc ~/.vim

