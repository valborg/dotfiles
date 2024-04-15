# does not seem to work
# brew install zsh-syntax-highlighting

brew install cmake
brew install qt5
if ! [[ -d "/usr/local/opt/" ]]; then
	echo /usr/local/opt folder does not exist. Enter password to create it
	sudo mkdir -p /usr/local/opt
fi
ln -s /opt/homebrew/Cellar/qt@5/5.15.2_1 /user/local/opt/qt5
brew install pyenv
pyenv install 3.9.9
pyenv global 3.9.9