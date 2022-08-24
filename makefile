LDFLAGS = -framework Foundation -framework CoreLocation

install: get-location/get-location
	cp get-location/get-location /usr/local/bin/
	# remove for manual install:
	git config --global init.templatedir '~/.git-doxx-template'
	mkdir -p ~/.git-doxx-template/hooks
	cp commit-msg ~/.git-doxx-template/hooks/commit-msg
	chmod a+x ~/.git-doxx-template/hooks/commit-msg

remove:
	rm ~/.git-doxx-template/hooks/commit-msg

get-location: get-location/get-location.o

get-location/get-location.m:
	git clone "https://github.com/lindes/get-location.git"
