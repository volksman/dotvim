My Vim settings, mostly mostly used for python/django + html & js dev.
The only outside requirements are [Ack](http://betterthangrep.com/) and Ctags.

	git clone git@github.com:volksman/dotvim.git
	cd dotvim

	git submodule init
	git submodule update

	cd ~
	rm -rf .vim
	ln -s dotvim/.vim
	ln -s dotvim/.vimrc

To update all the submodules?

    git submodule foreach git pull origin master

Big big big thanks to mgrouchy and myusuf3 for being great netizens!
