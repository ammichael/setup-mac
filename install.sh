#! /bin/bash

echo "Selecione os scripts que você gostaria de rodar (digite os números separados por espaço):"
echo "1. Common - Utilidades gerais, navegador, etc."
echo "2. Dev - Ferramentas de desenvolvimento"
read -p "Insira sua escolha: " options

for option in $options
do
    case $option in
        1) sh common.sh;;
        2) sh dev.sh;;
        *) echo "Opção $option é inválida";;
    esac
done
