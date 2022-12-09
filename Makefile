HOME := /c/Users/av

deploy:
	cp -r komorebi.ahk \
		.yasb \
		.bashrc .bash_profile .alias \
		.gitconfig .gitignore \
		${HOME}
