CAPTAIN_CONFIG_PATH=~/Library/Application\ Support/captain-sql
if [[ -d $CAPTAIN_CONFIG_PATH ]]; then
    echo 'creating symbolic links for captain-sql config'
	for f in $(ls captain-sql)
    do 
        rm ~/Library/Application\ Support/captain-sql/$f
        ln -s $(pwd)/captain-sql/$f ~/Library/Application\ Support/captain-sql/$f
    done

fi

