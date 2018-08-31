
#!/usr/bin/env bash
IFS=$'\n'
for al in $(cat ./aliases.conf);
do
	echo "removing '$al'";
	sudo sed --in-place '\|'"$al"'|d' ~/.bashrc;
done;

sudo cat ./aliases.conf >> ~/.bashrc;
exit;
bash;

# sed https://askubuntu.com/questions/344407/how-to-read-complete-line-in-for-loop-with-spaces
# for https://unix.stackexchange.com/questions/271506/remove-lines-that-contain-file-path-using-sed
