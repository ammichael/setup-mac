#! /bin/bash

# Start
clear
echo "starting dev install script"
# Brew Taps
brew tap homebrew/cask-fonts
brew tap AdoptOpenJDK/openjdk
# Brew Installs
brew install node yarn cocoapods watchman imagemagick fastlane
# Brew Cask Installs
brew cask install firefox sourcetree postman visual-studio-code android-studio reactotron font-fira-code adoptopenjdk8
# XCode Stuff
xcode-select --install
xcode-select --switch /Applications/Xcode.app
# Firebase CLI
curl -sL firebase.tools | bash
#OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# End
echo "dev setup finished!"
