#! /bin/bash

clear
echo "starting dev setup"


# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Fix husky prehooks
echo "export PATH="$(dirname $(which node)):$PATH"" > ~/.huskyrc

# Add NVM to zshrc
cat << EOF >> ~/.zshrc
# NVM
export NVM_DIR=~/.nvm
source \$(brew --prefix nvm)/nvm.sh
export ANDROID_HOME=/Users/mikeamaral/Library/Android/sdk
export PATH=\$PATH:\$ANDROID_HOME/platform-tools
export PATH=\$PATH:\$ANDROID_HOME/tools
export PATH=\$PATH:\$ANDROID_HOME/tools/bin
export PATH=\$PATH:\$ANDROID_HOME/emulator
EOF

# source zshrc
source ~/.zshrc

# End
echo "dev setup finished!"