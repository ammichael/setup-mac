#! /bin/bash

clear
echo "starting dev setup"

# Brew taps
brew tap AdoptOpenJDK/openjdk

# Brew installs
brew install node yarn cocoapods watchman imagemagick fastlane github/gh/gh

# Brew cask installs
brew cask install sourcetree postman visual-studio-code android-studio reactotron adoptopenjdk8

# XCode
xcode-select --install
xcode-select --switch /Applications/Xcode.app

# Firebase CLI
curl -sL firebase.tools | bash

#OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# End
echo "setup finished!"
