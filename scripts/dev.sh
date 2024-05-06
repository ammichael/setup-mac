#! /bin/bash

clear
echo "Starting dev setup 👨‍💻"

# Verifique se um argumento de e-mail foi fornecido
if [ -z "$1" ]; then
  echo "Por favor, forneça um e-mail como argumento \`sh dev.sh your_email@example.com\`."
  exit 1
fi

# Check brew
if ! which brew >/dev/null; then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# Brew taps
brew tap homebrew/cask-fonts
brew tap AdoptOpenJDK/openjdk

# Brew installs
brew install nvm \
gh \
yarn \
cocoapods \
watchman \
imagemagick \
pyenv \
fastlane \
figma \
flipper \
sourcetree \
postman \
visual-studio-code \
android-studio \
reactotron \
font-fira-code \
flutter \
iterm2 \
zsh \
adoptopenjdk \
clop \
yt-dlp

# Add NVM to zshrc
cat << EOF >> ~/.zshrc
# NVM
export NVM_DIR=~/.nvm
source \$(brew --prefix nvm)/nvm.sh
export ANDROID_HOME=\$HOME/Library/Android/sdk
export PATH=\$PATH:\$ANDROID_HOME/platform-tools
export PATH=\$PATH:\$ANDROID_HOME/tools
export PATH=\$PATH:\$ANDROID_HOME/tools/bin
export PATH=\$PATH:\$ANDROID_HOME/emulator
EOF

# Source zshrc
source ~/.zshrc

# Setup Node
nvm install node
nvm alias default node

# Yarn global packages
yarn global add yalc
yarn global add firebase-tools

# Setup Pyenv
pyenv install 3.11.3
pyenv global 3.11.3
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

echo "Fixing the damn PATH"


# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Fix Husky prehooks
echo "export PATH="$(dirname $(which node)):$PATH"" > ~/.huskyrc

# Add SSH key to Github
# Testa a conexão SSH com o GitHub
ssh_output=$(ssh -T git@github.com 2>&1)

# Verifica se a saída contém a string "successfully authenticated"
if [[ $ssh_output == *"successfully authenticated"* ]]; then
  echo "SSH para GitHub já está configurado!"
else
  echo "Configurando SSH para GitHub..."
    ssh-keygen -t rsa -b 4096 -C "$1"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
    pbcopy < ~/.ssh/id_rsa.pub
    echo "SSH key (id_rsa) copiada para o clipboard."
fi

# Adiciona chave ssh no .zshrc
cat << EOF >> ~/.zshrc
# SSH
eval "\$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
EOF

# Source zshrc
source ~/.zshrc

# XCode
mas install 497799835 # Xcode
xcode-select --install
sudo xcodebuild -license accept
xcode-select --switch /Applications/Xcode.app

# End
echo "Dev setup finished! ✅"
