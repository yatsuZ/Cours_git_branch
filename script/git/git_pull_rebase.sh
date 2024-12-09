#!/bin/bash

# Couleur pour 'git pull --rebase'
echo -e "${BLUE}Exécution de git pull --rebase${NC}"

# Exemple de pull avec rebase
git pull --rebase

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Pull avec rebase effectué avec succès.${NC}"
else
    echo -e "${RED}Erreur lors du pull.${NC}"
fi
