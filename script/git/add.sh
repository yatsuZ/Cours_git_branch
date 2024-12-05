#!/bin/bash

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Pas de couleur

git add .

if [ $? -ne 0 ]; then
  echo -e "${RED}Erreur lors de l'exécution de la commande git add.${NC}"
  exit 1
fi

echo -e "${GREEN}git add avec succès ! :D${NC}"
