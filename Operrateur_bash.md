# Opérateurs Bash

- [Opérateurs Bash](#opérateurs-bash)
	- [Explication des opérateurs Bash](#explication-des-opérateurs-bash)
		- [Différence entre une commande et un opérateur](#différence-entre-une-commande-et-un-opérateur)
	- [ne](#ne)
		- [Exemple d'utilisation](#exemple-dutilisation)
		- [Utilisation du script associé](#utilisation-du-script-associé)
	- [z](#z)
		- [Exemple d'utilisation](#exemple-dutilisation-1)
		- [Utilisation du script associé](#utilisation-du-script-associé-1)
	- [eq](#eq)
		- [Exemple d'utilisation](#exemple-dutilisation-2)
		- [Utilisation du script associé](#utilisation-du-script-associé-2)

## Explication des opérateurs Bash

Les opérateurs Bash sont des éléments syntaxiques utilisés pour effectuer des comparaisons, des calculs ou des tests dans les scripts shell. Contrairement aux commandes qui exécutent des actions spécifiques, les opérateurs sont des symboles ou mots-clés intégrés au langage Bash.

### Différence entre une commande et un opérateur

- **Commande** : une instruction exécutée par le shell pour effectuer une tâche spécifique (par exemple : `ls`, `cd`, `echo`).
- **Opérateur** : un symbole ou mot-clé utilisé pour effectuer des opérations logiques, arithmétiques ou de comparaison (par exemple : `-ne`, `-eq`, `>`, `<`).

## ne

L'opérateur `-ne` (not equal) permet de comparer deux nombres pour vérifier s'ils sont différents.

### Exemple d'utilisation

- `-ne` : teste si deux nombres ne sont pas égaux.
- Si les nombres sont différents, une action est effectuée (par exemple, afficher un message).

```bash
if [ $a -ne $b ]; then
    echo "Les nombres sont différents"
fi
```

### Utilisation du script associé

Le script `ne.sh` utilise cet opérateur pour comparer deux variables et afficher un message selon le résultat. Vous pouvez l'exécuter avec :

```bash
bash ./script/les_opperateurs_bash/ne.sh
```

## z

L'opérateur `-z` (zero) permet de tester si une chaîne de caractères est vide. Si la chaîne est vide, l'opérateur retourne vrai.

### Exemple d'utilisation

- `-z` : teste si une chaîne de caractères est vide.
- Si la chaîne est vide, une action est effectuée (par exemple, afficher un message).

```bash
if [ -z "$var" ]; then
    echo "La variable est vide"
fi
```

### Utilisation du script associé

Le script `ze.sh` utilise cet opérateur pour tester si une variable est vide et affiche un message en conséquence. Vous pouvez l'exécuter avec :

```bash
bash ./script/les_opperateurs_bash/ze.sh
```

## eq

L'opérateur `-eq` est utilisé pour tester si deux nombres sont égaux. C'est un opérateur de comparaison numérique, donc il ne fonctionne qu'avec des entiers. Si les deux nombres sont égaux, l'expression retourne vrai.

### Exemple d'utilisation

- `-eq` : teste si deux nombres sont égaux.
- Si les nombres sont égaux, une action est effectuée (par exemple, afficher un message).

```bash
if [ $a -eq $b ]; then
    echo "Les nombres sont égaux"
fi
```

### Utilisation du script associé

Le script `eq.sh` utilise cet opérateur pour tester si deux variables ont des valeurs égales et affiche un message en conséquence. Vous pouvez l'exécuter avec :

```bash
bash ./script/les_opperateurs_bash/eq.sh
```