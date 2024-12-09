#!/bin/bash

# Couleur pour 'git reset'
echo -e "${BLUE}Exécution de git reset${NC}"

# Exemple de reset dur vers un commit précédent
git reset --hard HEAD~1

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Réinitialisation effectuée avec succès.${NC}"
else
    echo -e "${RED}Erreur lors de la réinitialisation.${NC}"
fi
