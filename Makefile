all:
	sudo apt-get update
	sudo apt-get install fswebcam
	sudo apt-get install emacs
	sudo apt-get install vim 
	sudo apt-get install xrdp
	sudo apt-get update
	sudo apt-get install python-rpi.gpio python3-rpi.gpio
	sudo apt-get update
	sudo apt-get install libopencv-dev
	sudo apt-get install python-opencv
	sudo apt-get install python-pygame
	sudo apt-get install git

vnc:
	sudo apt-get update
	sudo apt-get install realvnc-vnc-server realvnc-viewer
