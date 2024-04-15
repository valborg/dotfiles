echo 'creating symlinks to to default vscode destination on mac'
for f in $(ls vscode)
do 
    rm -rf ~/Library/Application\ Support/Code/User/$f
    ln -s $(pwd)/vscode/$f ~/Library/Application\ Support/Code/User/$f
done

