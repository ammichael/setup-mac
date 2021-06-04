#! /bin/bash

clear
echo "starting dev setup"

# Brew taps
brew tap homebrew/cask-fonts
brew tap AdoptOpenJDK/openjdk

# Brew installs
brew install node nvm yarn cocoapods watchman imagemagick fastlane github/gh/gh firefox figma sourcetree postman visual-studio-code android-studio reactotron font-fira-code adoptopenjdk8

# XCode
xcode-select --install
xcode-select --switch /Applications/Xcode.app

# Firebase CLI
curl -sL firebase.tools | bash

#OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# End
echo "dev setup finished!"
