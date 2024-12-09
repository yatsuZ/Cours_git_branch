#!/bin/bash

# Couleur pour 'git checkout'
echo -e "${BLUE}Exécution de git checkout vers le main${NC}"

# Exemple de changement de branche
git checkout main

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Changement de branche effectué avec succès.${NC}"
else
    echo -e "${RED}Erreur lors du changement de branche.${NC}"
fi
