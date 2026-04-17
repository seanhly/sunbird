#!/usr/bin/bash

DOWNLOAD_URL=https://releases.mozilla.org/pub/calendar/sunbird/releases/0.9/contrib/linux-x86_64/sunbird-0.9.en-US.linux-x86_64.tar.gz
DOWNLOAD_PATH=sunbird-0.9.en-US.linux-x86_64.tar.gz
CHECKSUM=caa0b0774a02205ea71154050de074a4ea058c968d4802ecc821e3817a2d2722
INSTALL_DIR=/opt/sunbird

wget $DOWNLOAD_URL -O $DOWNLOAD_PATH
if [ "$(sha256sum $DOWNLOAD_PATH | awk '{print $1}')" != "$CHECKSUM" ]; then
	echo "Checksum verification failed. Exiting."
	exit 1
fi

tar -xvf $DOWNLOAD_PATH

if [ -d "$INSTALL_DIR" ]; then
	printf "Directory $INSTALL_DIR already exists. Remove and replace it? (yes/no) "
	read response
	if [ "$response" = "yes" ]; then
		sudo rm -r $INSTALL_DIR
		echo "Existing installation removed. Proceeding with new installation."
	else
		echo "Installation aborted."
		rm $DOWNLOAD_PATH
		rm -r sunbird
		exit 1
	fi
fi

sudo rsync -avh --progress ./sunbird/ $INSTALL_DIR/ --remove-source-files
rm -r sunbird
rm $DOWNLOAD_PATH

sudo rsync -avh --progress ./usr/ /usr/
