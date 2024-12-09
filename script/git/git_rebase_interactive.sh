#!/bin/bash

# Couleur pour 'git rebase -i'
echo -e "${BLUE}Exécution de git rebase -i${NC}"

# Exemple de rebase interactif sur les 3 derniers commits
git rebase -i HEAD~1

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Rebase interactif effectué avec succès.${NC}"
else
    echo -e "${RED}Erreur lors du rebase.${NC}"
fi
