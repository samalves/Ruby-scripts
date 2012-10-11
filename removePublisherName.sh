#!/bin/bash

# Remove the publisher's name from the file's name
#
# May 3, 2011
# Sam Alves
# Bash 4.1.5

# Remove the name "Addison.Wesley." "Addison-Wesley "
find . -maxdepth 1 -type f | while read filename; do
	new_name=`echo "$filename" | sed 's/Addison[.-]Wesley[. ]//'`
	if [ "$filename" != "$new_name" ]; then
		mv "$filename" "$new_name"
	fi
done
