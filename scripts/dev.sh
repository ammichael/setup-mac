#! /bin/bash

clear
echo "starting dev setup"

# Brew taps
brew tap homebrew/cask-fonts
brew tap AdoptOpenJDK/openjdk

# Brew installs
brew install nvm \
yarn \
cocoapods \
watchman \
imagemagick \
pyenv \
fastlane \
figma \
fig \
sourcetree \
postman \
visual-studio-code \
android-studio \
reactotron \
font-fira-code \
flutter \
iterm2 \
zsh \
adoptopenjdk

# Setup Node
nvm install node
nvm alias default node

# Setup Pyenv
pyenv install 3.11.3
pyenv global 3.11.3
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# XCode
xcode-select --install
xcode-select --switch /Applications/Xcode.app

# yarn global packages
yarn global add yalc

# End
echo "dev setup finished!"
