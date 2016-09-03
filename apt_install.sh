#!/bin/bash
#install apt-get stuff
FILE="apt-get_install"
exec 3<&0                      # save current stdin
exec 0<"$FILE"                 #   and change it to read from file.

while read -r line ; do        # read every line from stdin (currently file).
	echo "sudo apt-get install $line"
	sudo apt-get -y install $line           #   and process it.
done

exec 0<&3                      # restore previous stdin.

