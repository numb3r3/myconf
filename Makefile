macos_build:
	brew cask install squirrel
	brew install git tmux zsh
	brew install aspell --lang=en
	brew install emacs
	#brew linkapps
macos_install:
	PWD=$(shell pwd)
	mkdir -p ~/Library/KeyBindings
	ln -svnf $(PWD)/macos/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
	ln -svnf $(PWD)/emacs $(HOME)/.emacs
	ln -svnf $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -svnf $(PWD)/zsh_themes/dracula.zsh-theme $(HOME)/.oh-my-zsh/themes/dracula.zsh-theme
	ln -svnf $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -svnf $(PWD)/macos/zshrc $(HOME)/.zshrc

linux_build:
	sudo apt-get install git tmux zsh emacs ibus-rime
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	sudo chsh -s `which zsh`


linux_install:
	PWD=$(shell pwd)
	ln -svnf $(PWD)/emacs $(HOME)/.emacs
	ln -svnf $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -svnf $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -svnf $(PWD)/linux/zshrc $(HOME)/.zshrc
