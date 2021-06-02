#! /bin/bash

clear
echo "starting dev setup"

# Taps
brew tap AdoptOpenJDK/openjdk

# Install CLI
brew install node yarn cocoapods watchman imagemagick fastlane github/gh/gh

# Install Apps
brew cask install postman visual-studio-code android-studio reactotron adoptopenjdk8

# XCode
xcode-select --install
xcode-select --switch /Applications/Xcode.app

# Firebase CLI
curl -sL firebase.tools | bash

#OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# End
echo "setup finished!"
