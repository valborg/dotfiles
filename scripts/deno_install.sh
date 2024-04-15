curl -fsSL https://deno.land/install.sh | sh

echo enter password to link deno to /usr/local/bin
sudo ln -s ~/.deno/bin/deno /usr/local/bin/deno

echo generating deno completions 

if ! [[ -d "/usr/local/etc/bash_completion.d" ]]; then
	echo bash_completion.d folder does not exist. Enter password to create it
	sudo mkdir -p /usr/local/etc/bash_completion.d
fi

deno completions bash > /usr/local/etc/bash_completion.d/deno.bash
