#!/bin/bash

# Définir les couleurs
BLUE="\033[34m"
GREEN="\033[32m"
RED="\033[31m"
NC="\033[0m"  # Aucune couleur

# Vérifier si un argument a été fourni
if [ -z "$1" ]; then
    echo -e "${RED}Erreur : Vous devez spécifier un nom de branche à fusionner.${NC}"
    exit 1
fi

BRANCH_NAME=$1

# Vérifier si la branche existe
if ! git show-ref --verify --quiet refs/heads/"$BRANCH_NAME"; then
    echo -e "${RED}Erreur : La branche '$BRANCH_NAME' n'existe pas.${NC}"
    exit 1
fi

# Afficher un message avant de commencer la fusion
echo -e "${BLUE}Exécution de git merge pour la branche '$BRANCH_NAME'${NC}"

# Effectuer la fusion de la branche
git merge "$BRANCH_NAME"

# Afficher un message de succès ou d'échec
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Fusion effectuée avec succès.${NC}"
else
    echo -e "${RED}Erreur lors de la fusion.${NC}"
fi
