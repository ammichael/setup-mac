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
 istat-menus \
 bartender \
 numi

# Curl installs
curl -L -o cron-arm64.dmg https://download.cron.com/mac/dmg/arm64 && hdiutil attach cron-arm64.dmg && cp -r /Volumes/cron/Cron.app /Applications/ && hdiutil detach /Volumes/cron && rm cron-arm64.dmg

# App Store installs
mas install 803453959 # Slack
mas install 1147396723 # WhatsApp
mas install 1176895641 # Spark
mas install 1291898086 # Toggl Track
mas install 1537056818 # Unzip
mas install 1528890965 # TextSniper
mas install 494168017 # Authy
mas install 747648890 # Telegram
mas install 824183456 # Affinity Designer
mas install 1339170533 # CleanMyMac X
mas install 1402042596 # AdBlock for Safari
mas install 1520333300 # Wappalyzer
mas install 409789998 # Twitter

# Local installs

# Tibia install
hdiutil attach ../apps/Tibia_Setup.dmg
cp -r /Volumes/Tibia_Setup/Tibia.app /Applications/
hdiutil detach /Volumes/Tibia_Setup
# Aldente install
hdiutil attach ../apps/AlDente-Pro.dmg
cp -r /Volumes/AlDente/AlDente.app /Applications/
hdiutil detach /Volumes/AlDente

# Local copies
cp -r ../apps/Chatterbox.app /Applications/ # Chatterbox


echo "All set in common setup! 💅"