# This Makefile creates symlinks in dotfiles in ~ to the files in this folder.
# If you already have dotfiles in you ~ dir then run : make clean to remove old
# files first.

all: terminal editor versionctrl

terminal: ~/.bashrc ~/.bash_profile ~/.profile ~/.zshrc oh-my-zsh
	@echo Linking bashrc, bash_profile, profile, zshrc, oh-my-zsh

~/.profile:
	ln -s $(PWD)/terminal/profile $@
~/.bashrc:
	ln -s $(PWD)/terminal/bashrc $@
~/.bash_profile:
	ln -s $(PWD)/terminal/bash_profile $@
~/.zshrc:
	ln -s $(PWD)/terminal/zshrc $@

# installs a nice interface to iterm (curl and git required)
oh-my-zsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

editor: ~/.vimrc ~/.vim pathogen
	@echo Linking vimrc and vim

~/.vimrc:
	ln -s $(PWD)/editor/vimrc $@
~/.vim:
	ln -s $(PWD)/editor/vim $@
pathogen:
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

versionctrl: ~/.gitattributes ~/.gitconfig

~/.gitattributes:
	ln -s $(PWD)/versionctrl/gitattributes $@
~/.gitconfig:
	cp versionctrl/gitconfig $@

clean:
	rm -rf ~/.bashrc ~/.bash_profile ~/.profile ~/.zshrc
	rm -rf ~/.vimrc ~/.vim
	rm -rf ~/.gitattributes ~/.gitconfig
