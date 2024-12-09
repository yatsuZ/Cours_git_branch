#!/bin/bash

# Définir les couleurs
BLUE="\033[34m"
GREEN="\033[32m"
RED="\033[31m"
NC="\033[0m"  # Aucune couleur

# Vérifier si un nom de branche a été fourni
if [ -z "$1" ]; then
    echo -e "${RED}Erreur : Vous devez spécifier le nom d'une branche pour le push.${NC}"
    exit 1
fi

BRANCH_NAME=$1

# Vérifier si la branche existe localement
if ! git show-ref --verify --quiet refs/heads/"$BRANCH_NAME"; then
    echo -e "${RED}Erreur : La branche '$BRANCH_NAME' n'existe pas localement.${NC}"
    exit 1
fi

# Afficher un message avant de commencer le push
echo -e "${BLUE}Exécution de git push origin pour la branche '$BRANCH_NAME'${NC}"

# Effectuer le push vers le dépôt distant
git push origin "$BRANCH_NAME"

# Afficher un message de succès ou d'échec
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Push effectué avec succès.${NC}"
else
    echo -e "${RED}Erreur lors du push.${NC}"
fi
