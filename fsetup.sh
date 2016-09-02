#!/bin/bash
#install nvm 
echo "starting apt installation"
./apt_install.sh
File="npm_install"
exec 3<&0                      # save current stdin
exec 0<"$FILE"                 #   and change it to read from file.

while read -r line ; do        # read every line from stdin (currently file).
  npm install -G $line            #   and process it.
done

exec 0<&3                      # restore previous stdin.
IFS=$BAKIFS                    #   and IFS.