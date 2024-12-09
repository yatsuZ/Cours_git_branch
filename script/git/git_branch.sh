#!/bin/bash

# Couleur pour 'git branch'
echo -e "${BLUE}Exécution de git branch${NC}"

# Liste des branches locales
git branch

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Branches récupérées avec succès.${NC}"
else
    echo -e "${RED}Erreur lors de la récupération des branches.${NC}"
fi
