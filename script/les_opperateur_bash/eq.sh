#!/bin/bash

# Déclaration de deux variables numériques
a=5
b=5

# Utilisation de l'opérateur -eq pour tester si a est égal à b
if [ $a -eq $b ]; then
  echo "Les nombres sont égaux."
else
  echo "Les nombres ne sont pas égaux."
fi
