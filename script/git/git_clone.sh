#!/bin/bash

# Définir les couleurs
BLUE="\033[34m"
GREEN="\033[32m"
RED="\033[31m"
NC="\033[0m"  # Aucune couleur

# Vérifier si un argument a été fourni
if [ -z "$1" ]; then
    echo -e "${RED}Erreur : Vous devez spécifier une URL de dépôt pour le clonage.${NC}"
    exit 1
fi

REPO_URL=$1

# Vérifier si l'URL du dépôt est valide (en utilisant git ls-remote pour vérifier la connectivité)
if ! git ls-remote "$REPO_URL" > /dev/null 2>&1; then
    echo -e "${RED}Erreur : L'URL du dépôt '$REPO_URL' est invalide ou inaccessible.${NC}"
    exit 1
fi

# Afficher un message avant de commencer le clonage
echo -e "${BLUE}Exécution de git clone pour l'URL '$REPO_URL'${NC}"

# Effectuer le clonage du dépôt
git clone "$REPO_URL"

# Afficher un message de succès ou d'échec
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Clonage effectué avec succès.${NC}"
else
    echo -e "${RED}Erreur lors du clonage.${NC}"
fi
