#!/bin/bash

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # Pas de couleur


if [ -z "$1" ]; then
  echo -e "${RED}La variable d'entrée est vide.${NC}"
else
  echo -e "${GREEN}La variable d'entrée contient : '${BLUE}$1${GREEN}'.${NC}"
fi

# z pour dire 0