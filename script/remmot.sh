#!/bin/bash

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # Pas de couleur

# Récupérer les arguments
name="$1"
url="$2"

# Vérifier que name et url ne soient pas vides
if [ -z "$name" ] || [ -z "$url" ]; then
  echo -e "${YELLOW}Il faut fournir un nom et une URL pour le dépôt distant.${NC}"
  exit 1
fi

# Exécution de la commande git remote add
git remote add "$name" "$url"

# Vérifier si la commande a échoué
if [ $? -ne 0 ]; then
  echo -e "${RED}Erreur lors de l'exécution de la commande git remote add.${NC}"
  exit 1
fi

echo -e "${GREEN}Dépôt distant ajouté avec succès ! :D${NC}"
