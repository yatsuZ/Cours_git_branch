#!/bin/bash

# Définir les couleurs
BLUE="\033[34m"
GREEN="\033[32m"
RED="\033[31m"
NC="\033[0m"  # Aucune couleur

# Vérifier si le remote 'origin' est configuré
if ! git remote | grep -q origin; then
    echo -e "${RED}Erreur : Le remote 'origin' n'est pas configuré.${NC}"
    exit 1
fi

# Afficher un message avant de commencer le push
echo -e "${BLUE}Exécution de git push origin --all pour pousser toutes les branches locales.${NC}"

# Effectuer le push de toutes les branches vers le dépôt distant
git push origin --all

# Afficher un message de succès ou d'échec
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Toutes les branches locales ont été poussées avec succès vers 'origin'.${NC}"
else
    echo -e "${RED}Erreur lors du push des branches.${NC}"
fi
