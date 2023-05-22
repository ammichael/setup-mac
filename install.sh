#! /bin/bash

echo "Selecione os scripts que você gostaria de rodar (digite os números separados por espaço):"
echo "1. common.sh"
echo "2. dev.sh"
echo "3. homebrew.sh"
read -p "Insira sua escolha: " options

for option in $options
do
    case $option in
        1) sh common.sh;;
        2) sh dev.sh;;
        3) sh homebrew.sh;;
        *) echo "Opção $option é inválida";;
    esac
done
