#!/bin/bash

# Aplica as preferências do sistema macOS

echo "Configurando as preferências do Dock..."
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0.0
defaults write com.apple.dock autohide-time-modifier -float 0.2
defaults write com.apple.dock expose-animation-duration -float 0.2
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock launchanim -bool false
# Nota: static-only não é uma chave padrão conhecida. Pode ser específica do Nix ou de alguma ferramenta.
# defaults write com.apple.dock static-only -bool false
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock orientation -string "bottom"
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock mineffect -string "scale"

echo "Configurando as preferências globais (NSGlobalDomain)..."
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool true
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 2.5
# Para WebKitDeveloperExtras e AppleWindowTabbingMode
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write NSGlobalDomain AppleWindowTabbingMode -string "always"

echo "Configurando as preferências do Finder..."
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Configurando as preferências de Desktop Services..."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "Configurando as preferências de proteção de tela..."
# Nota: A chave correta pode variar ligeiramente dependendo da versão do macOS.
# Esta é a forma mais comum:
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Configurando as preferências de captura de tela..."
# Certifique-se de que o diretório ~/Desktop existe
mkdir -p ~/Desktop
defaults write com.apple.screencapture location -string "~/Desktop"
defaults write com.apple.screencapture type -string "png"

echo "Configurando as preferências de publicidade..."
defaults write com.apple.AdLib allowApplePersonalizedAdvertising -bool false

echo "Configurando as preferências de impressão..."
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "Configurando as preferências de atualização de software..."
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

echo "Configurando as preferências do Time Machine..."
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo "Configurando as preferências de captura de imagem..."
defaults write com.apple.ImageCapture disableHotPlug -bool true

echo "Configurando as preferências da App Store..."
defaults write com.apple.commerce AutoUpdate -bool true

echo "Reiniciando aplicativos afetados para aplicar as alterações..."
killall Dock
killall Finder
# killall SystemUIServer # Pode não ser necessário para todas as alterações, mas reinicia a barra de menus

echo "Preferências aplicadas com sucesso!"
echo "Nota: Algumas alterações podem exigir que você faça logout e login novamente ou reinicie o Mac."
