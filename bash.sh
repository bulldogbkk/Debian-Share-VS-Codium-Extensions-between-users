#!/bin/bash

# copy from my user to a shared area the vscodium extensions
cp -r /home/steve/.vscode-oss/extensions /usr/local/share/vscodium-extensions

# set permissions for the folder 
chown root:root /usr/local/share/vscodium-extensions
chown 755 /usr/local/share/vscodium-extensions

# copy a file that contains the line "export VSCODE_EXTENSIONS=/usr/local/share/vscodium-extensions"
# to point VS Codium at the shared extensions folder
cp /<path to file>/vscodium.sh /etc/profile.d/vscodium.sh

# set file as executable
chmod +x /etc/profile.d/vscodium.sh

# you will need to logout for changes to take effect.
