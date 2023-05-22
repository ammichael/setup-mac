#! /bin/bash

# Verifique se um argumento de e-mail foi fornecido
if [ -z "$1" ]; then
  echo "Por favor, forneça um e-mail como argumento \`sh start.sh your_email@example.com\`."
  exit 1
fi

# Install Common Stuff
sh ./scripts/common.sh ; sh ./scripts/common.sh $1