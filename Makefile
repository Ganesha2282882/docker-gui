all: docker-gui
docker-gui:
	cp usr/bin/docker-gui .
	
install:
	@mkdir -p /usr/local/bin /usr/share/applications
	cp docker-gui /usr/local/bin
	chown root:root /usr/local/bin/docker-gui
	chmod 755 /usr/local/bin/docker-gui
	cp docker-gui.desktop /usr/share/applications 
	cp docker-256x256.png /usr/share/icons/hicolor/256x256/apps
	
uninstall:
	rm -f /usr/share/applications/docker-gui.desktop /usr/local/bin/docker-gui
