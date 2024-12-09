#!/bin/bash

# Couleur pour 'git commit --amend'
echo -e "${BLUE}Exécution de git commit --amend${NC}"

# Exemple d'amendement du dernier commit
git commit --amend -m "Message de commit modifié"

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Le commit a été modifié avec succès !${NC}"
else
    echo -e "${RED}Erreur lors de la modification du commit.${NC}"
fi
