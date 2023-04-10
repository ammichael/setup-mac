#! /bin/bash

clear
echo "starting dev setup"

# Brew taps
brew tap homebrew/cask-fonts
brew tap AdoptOpenJDK/openjdk

# Brew installs
brew install node nvm yarn cocoapods watchman imagemagick pyenv fastlane figma fig sourcetree postman visual-studio-code android-studio reactotron font-fira-code flutter iterm2 zsh adoptopenjdk

# Setup Pyenv
pyenv install 3.11.3
pyenv global 3.11.3

# XCode
xcode-select --install
xcode-select --switch /Applications/Xcode.app


# yarn global packages
yarn global add yalc

#OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Fix husky prehooks
echo "export PATH="$(dirname $(which node)):$PATH"" > ~/.huskyrc

# End
echo "dev setup finished!"
