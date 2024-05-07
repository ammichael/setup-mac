 #! /bin/bash

clear
echo "Starting common setup 🧞‍♂️"

# Check brew
if ! which brew >/dev/null; then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# Brew installs
brew install arc \
 rectangle \
 notion \
 notion-calendar \
 istat-menus \
 bartender \
 numi \
 mas \
 displaylink

# App Store installs
mas install 803453959 # Slack
mas install 1147396723 # WhatsApp
mas install 6445813049 # Spark
mas install 1528890965 # TextSniper
mas install 824183456 # Affinity Designer
mas install 1339170533 # CleanMyMac X
mas install 1402042596 # AdBlock for Safari
mas install 1520333300 # Wappalyzer

# Local installs

# Tibia install
hdiutil attach ../apps/Tibia_Setup.dmg
cp -r /Volumes/Tibia_Setup/Tibia.app /Applications/
hdiutil detach /Volumes/Tibia_Setup

echo "All set in common setup! 💅"
