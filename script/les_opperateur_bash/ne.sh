#!/bin/bash

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Pas de couleur

# Définir deux nombres
nombre1=10
nombre2=20

if [ $nombre1 -ne $nombre2 ]; then
  echo -e "${GREEN}Les nombres sont différents : $nombre1 et $nombre2.${NC}"
else
  echo -e "${RED}Les nombres sont égaux.${NC}"
fi

# ne pour not equal