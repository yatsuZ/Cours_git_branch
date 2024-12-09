#!/bin/bash

# Couleur pour 'git tag'
echo -e "${BLUE}Exécution de git tag${NC}"

# Exemple de création d'un tag
git tag v1.0.0

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Tag créé avec succès.${NC}"
else
    echo -e "${RED}Erreur lors de la création du tag.${NC}"
fi


