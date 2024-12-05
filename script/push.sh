#!/bin/bash

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Pas de couleur

git push

if [ $? -ne 0 ]; then
  echo -e "${RED}Erreur lors de l'exécution de la commande git push.${NC}"
  exit 1
fi

echo -e "${GREEN}git push avec succès ! :D${NC}"
