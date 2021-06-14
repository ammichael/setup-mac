#! /bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap AdoptOpenJDK/openjdk

# Install CLI
brew install node@14 yarn cocoapods watchman

# Install Apps
brew install --cask notion slack visual-studio-code postman android-studio reactotron adoptopenjdk8
