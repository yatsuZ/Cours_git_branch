#!/bin/bash

# Couleur pour 'git fetch'
echo -e "${BLUE}Exécution de git fetch${NC}"

# Exemple de récupération des changements depuis le dépôt distant
git fetch origin

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Récupération des changements effectuée avec succès.${NC}"
else
    echo -e "${RED}Erreur lors de la récupération des changements.${NC}"
fi
