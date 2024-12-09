#!/bin/bash

# Définir les couleurs
BLUE="\033[34m"
GREEN="\033[32m"
RED="\033[31m"
NC="\033[0m"  # Aucune couleur

# Vérifier si un commit-id a été fourni
if [ -z "$1" ]; then
    echo -e "${RED}Erreur : Vous devez spécifier un commit-id pour la recherche binaire.${NC}"
    exit 1
fi

COMMIT_ID=$1

# Vérifier si le commit-id existe dans l'historique git
if ! git rev-parse --verify "$COMMIT_ID" > /dev/null 2>&1; then
    echo -e "${RED}Erreur : Le commit '$COMMIT_ID' n'existe pas dans l'historique.${NC}"
    exit 1
fi

# Afficher un message avant de commencer la recherche binaire
echo -e "${BLUE}Exécution de git bisect avec le commit '$COMMIT_ID'${NC}"

# Démarrer la recherche binaire avec git bisect
git bisect start
git bisect bad
git bisect good "$COMMIT_ID"

# Afficher un message de succès ou d'échec
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Recherche binaire effectuée avec succès.${NC}"
else
    echo -e "${RED}Erreur lors de la recherche binaire.${NC}"
fi
