#! /bin/bash

clear
echo "starting dev setup"

# Brew taps
brew tap homebrew/cask-fonts
brew tap AdoptOpenJDK/openjdk

# Brew installs
brew install node nvm yarn cocoapods watchman imagemagick fastlane figma sourcetree postman visual-studio-code android-studio reactotron font-fira-code flutter iterm2 zsh

# XCode
xcode-select --install
xcode-select --switch /Applications/Xcode.app

# Firebase CLI
curl -sL firebase.tools | bash

# yarn global packages
yarn global add yalc

#OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# End
echo "dev setup finished!"
