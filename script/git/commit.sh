#!/bin/bash

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # Pas de couleur

if [ -z "$1" ]; then
  echo -e "${YELLOW}Il faut mettre un commentaire pour le commit.${NC}"
  exit 1
fi

# Exécution du commit
git commit -m "$1"

if [ $? -ne 0 ]; then
  echo -e "${RED}Erreur lors de l'exécution de la commande git commit.${NC}"
  exit 1
fi

echo -e "${GREEN}Commit envoyé avec succès ! :D${NC}"
