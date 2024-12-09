#!/bin/bash

# Définition des couleurs
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Vérification si un argument (commit hash) a été passé
if [ -z "$1" ]; then
    echo -e "${RED}Erreur : Aucun argument fourni. Vous devez spécifier un hash de commit valide.${NC}"
    echo -e "Utilisation : $0 <commit-id>"
    exit 1
fi

# Le hash de commit passé en argument
COMMIT_HASH=$1

# Vérification si le commit existe
git cat-file commit "$COMMIT_HASH" &>/dev/null
if [ $? -ne 0 ]; then
    echo -e "${RED}Erreur : Le commit avec le hash $COMMIT_HASH n'existe pas.${NC}"
    exit 1
fi

# Couleur pour 'git cherry-pick'
echo -e "${BLUE}Exécution de git cherry-pick pour le commit ${COMMIT_HASH}${NC}"

# Application du commit spécifique
git cherry-pick "$COMMIT_HASH"

# Afficher un message de succès ou d'erreur
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Cherry-pick effectué avec succès.${NC}"
else
    echo -e "${RED}Erreur lors du cherry-pick.${NC}"
fi
