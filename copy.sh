#!/usr/bin/env bash

# sed https://askubuntu.com/questions/344407/how-to-read-complete-line-in-for-loop-with-spaces
# for https://unix.stackexchange.com/questions/271506/remove-lines-that-contain-file-path-using-sed

IFS=$'\n';

for entry in $(cat ./aliases.conf);
do
	echo "Entry: '$entry'";
	sudo sed --in-place '\|'"$entry"'|d' ~/.bashrc;
done;

sudo cat ./aliases.conf >> ~/.bashrc;
bash;
