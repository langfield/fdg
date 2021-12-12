install:
	sudo apt-get install -y mit-scheme
	wget https://groups.csail.mit.edu/mac/users/gjs/6946/scmutils-20200810.tar.gz -O scmutils.tar.gz
	mkdir -p scmutils && tar -xzvf scmutils.tar.gz -C scmutils --strip-components 1
	cd scmutils && sudo ./install.sh
	cp scmutils/mechanics.sh ~/.local/bin/
	rm -r scmutils/
	rm scmutils.tar.gz
