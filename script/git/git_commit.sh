#!/bin/bash

# Couleur pour 'git commit'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Réinitialiser la couleur

message_commit="Message de commit du script"

echo -e "${BLUE}Exécution de git commit, message predefini : \"${YELLOW}${message_commit}${BLUE}\"${NC}"

# Exemple de commit avec un message
git commit -m $message_commit

# Afficher un message de succès
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Commit effectué avec succès !${NC}"
else
    echo -e "${RED}Erreur lors du commit.${NC}"
fi