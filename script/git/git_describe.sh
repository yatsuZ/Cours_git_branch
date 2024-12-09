#!/bin/bash

# Couleur pour 'git describe'
echo -e "${BLUE}Exécution de git describe${NC}"

# Exemple d'utilisation de git describe
git describe --tags

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Description du commit effectuée avec succès.${NC}"
else
    echo -e "${RED}Erreur lors de la description du commit.${NC}"
fi
