echo 'creating dotfile symlinks in root folder'
for f in $(ls -A lib)
do 
    rm ~/$f
    ln -s $(pwd)/lib/$f ~/$f
done
