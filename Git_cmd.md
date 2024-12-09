# Les commandes de Git

- [Les commandes de Git](#les-commandes-de-git)
	- [Explication des commandes Git](#explication-des-commandes-git)
		- [**C'est quoi HEAD ?**](#cest-quoi-head-)
		- [Exemple :](#exemple-)
		- [**Commandes principales**](#commandes-principales)
	- [**commit et --amend**](#commit-et---amend)
	- [**branch**](#branch)
	- [**checkout**](#checkout)
	- [**cherry-pick**](#cherry-pick)
	- [**cherry-pick**](#cherry-pick-1)
	- [**reset**](#reset)
	- [**revert**](#revert)
	- [**rebase avec -i**](#rebase-avec--i)
	- [**merge**](#merge)
	- [**clone**](#clone)
	- [**fetch**](#fetch)
	- [**pull avec --rebase**](#pull-avec---rebase)
	- [**describe**](#describe)
	- [**bisect**](#bisect)
	- [**tag**](#tag)
	- [**push avec les origin source:destiner**](#push-avec-les-origin-sourcedestiner)


## Explication des commandes Git

Git est un système de contrôle de version décentralisé qui permet de suivre l'historique des changements apportés à un projet. Il permet de gérer les versions de fichiers, de collaborer avec d'autres personnes et de conserver un historique complet des modifications. Dans cette section, nous allons nous concentrer sur deux éléments essentiels : **HEAD** et les commandes les plus courantes de Git.

### **C'est quoi HEAD ?**

Dans Git, `HEAD` est un **référentiel symbolique** qui pointe vers le commit actuel de la branche active. En d'autres termes, il représente le dernier commit effectué dans votre dépôt, ainsi que celui de votre branche locale. Git utilise `HEAD` pour savoir où vous en êtes dans l'historique de votre projet.

- **Si HEAD pointe sur un commit spécifique** : vous êtes en mode "détaché" (`detached HEAD`). Cela signifie que vous travaillez directement sur un commit précis, mais vous n'êtes pas dans une branche. Les nouveaux commits ne seront pas rattachés à une branche.
- **Si HEAD pointe sur une branche** : cela signifie que vous êtes dans cette branche et tous les commits que vous effectuerez seront ajoutés à celle-ci.

### Exemple :
```bash
git log
```
Cette commande affiche l'historique des commits. Le commit avec un `*` est celui sur lequel `HEAD` pointe actuellement.

---

Voici une version corrigée et légèrement améliorée de cette section, avec quelques ajustements pour la lisibilité, la précision et la consistance des descriptions.

---

### **Commandes principales**

Voici un tableau récapitulatif des principales commandes Git, avec des liens redirigeant vers leurs documentations officielles pour une consultation plus approfondie, ainsi que le chemin vers les scripts associés.

| **#** | **Commande**              | **Description**                                                                                                                                    | **Lien vers la documentation Git**                                                                 | **Chemin du script**                                             |
|-------|---------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
| 1     | [`git commit`](./Git_cmd#commit-et---amend)             | Crée un commit avec les modifications ajoutées à l'index.                                                                                        | [git commit](https://git-scm.com/docs/git-commit)                                                  | [`./script/git/git_commit.sh`](./script/git/git_commit.sh)       |
| 2     | [`git commit --amend`](./Git_cmd#commit-et---amend)     | Modifie le dernier commit (ajoute des fichiers oubliés ou change le message).                                                                   | [git commit --amend](https://git-scm.com/docs/git-commit#git-commit--amend)                        | [`./script/git/git_commit_amend.sh`](./script/git/git_commit_amend.sh) |
| 3     | [`git branch`](./Git_cmd#branch)             | Liste, crée ou supprime des branches.                                                                                                             | [git branch](https://git-scm.com/docs/git-branch)                                                  | [`./script/git/git_branch.sh`](./script/git/git_branch.sh)       |
| 4     | [`git checkout`](./Git_cmd#checkout)           | Permet de naviguer entre les branches ou de revenir à un état spécifique du projet.                                                              | [git checkout](https://git-scm.com/docs/git-checkout)                                              | [`./script/git/git_checkout.sh`](./script/git/git_checkout.sh)   |
| 5     | [`git cherry-pick`](./Git_cmd#cherry-pick)        | Applique un commit spécifique d’une branche à une autre branche.                                                                                 | [git cherry-pick](https://git-scm.com/docs/git-cherry-pick)                                        | [`./script/git/git_cherry_pick.sh`](./script/git/git_cherry_pick.sh) |
| 6     | [`git reset`](./Git_cmd#reset)             | Réinitialise l'index à un état précédent, avec ou sans affecter les fichiers locaux.                                                             | [git reset](https://git-scm.com/docs/git-reset)                                                    | [`./script/git/git_reset.sh`](./script/git/git_reset.sh)         |
| 7     | [`git revert`](./Git_cmd#revert)            | Crée un commit inverse d'un commit spécifique (annule un commit sans altérer l’historique).                                                      | [git revert](https://git-scm.com/docs/git-revert)                                                  | [`./script/git/git_revert.sh`](./script/git/git_revert.sh)       |
| 8     | [`git rebase -i`](./Git_cmd#rebase-avec--i)        | Lance un rebase interactif pour réécrire l’historique des commits, combiner, réorganiser ou supprimer des commits.                                | [git rebase](https://git-scm.com/docs/git-rebase)                                                  | [`./script/git/git_rebase_interactive.sh`](./script/git/git_rebase_interactive.sh) |
| 9     | [`git merge`](./Git_cmd#merge)             | Fusionne les modifications d’une branche dans une autre, créant ainsi un commit de fusion.                                                        | [git merge](https://git-scm.com/docs/git-merge)                                                   | [`./script/git/git_merge.sh`](./script/git/git_merge.sh)         |
| 10    | [`git clone`](./Git_cmd#clone)             | Crée une copie locale d’un dépôt distant, y compris son historique.                                                                               | [git clone](https://git-scm.com/docs/git-clone)                                                   | [`./script/git/git_clone.sh`](./script/git/git_clone.sh)         |
| 11    | [`git fetch`](./Git_cmd#fetch)             | Récupère les modifications depuis un dépôt distant sans les fusionner avec la branche locale.                                                    | [git fetch](https://git-scm.com/docs/git-fetch)                                                   | [`./script/git/git_fetch.sh`](./script/git/git_fetch.sh)         |
| 12    | [`git pull --rebase`](./Git_cmd#pull-avec---rebase)      | Récupère les modifications d'un dépôt distant et les applique sur la branche locale avec rebase, réécrivant l'historique des commits locaux.       | [git pull](https://git-scm.com/docs/git-pull)                                                     | [`./script/git/git_pull_rebase.sh`](./script/git/git_pull_rebase.sh) |
| 13    | [`git describe`](./Git_cmd#describe)            | Donne un nom humainement lisible à un commit, basé sur la dernière étiquette et l’historique des commits.                                         | [git describe](https://git-scm.com/docs/git-describe)                                             | [`./script/git/git_describe.sh`](./script/git/git_describe.sh)   |
| 14    | [`git bisect`](./Git_cmd#bisect)              | Utilise une recherche binaire pour trouver le commit qui a introduit un bug dans le projet.                                                      | [git bisect](https://git-scm.com/docs/git-bisect)                                                 | [`./script/git/git_bisect.sh`](./script/git/git_bisect.sh)      |
| 15    | [`git tag`](./Git_cmd#tag)               | Crée une étiquette (tag) pour marquer un point spécifique dans l'historique, souvent utilisé pour les versions.                                  | [git tag](https://git-scm.com/docs/git-tag)                                                      | [`./script/git/git_tag.sh`](./script/git/git_tag.sh)             |
| 16    | [`git push origin`](./Git_cmd#push-avec-les-origin-sourcedestiner)      | Envoie les modifications locales vers un dépôt distant spécifique, souvent avec un nom de branche source et destination.                         | [git push](https://git-scm.com/docs/git-push)                                                     | [`./script/git/git_push_origin.sh`](./script/git/git_push_origin.sh) |


Voici une version corrigée et améliorée de la section que tu as partagée, avec des ajustements pour améliorer la clarté, la fluidité et la précision.

---

## **commit et --amend**

- `git commit` : Crée un commit avec les modifications ajoutées à l'index.
- `git commit --amend` : Modifie le dernier commit. Si vous avez oublié de commettre un fichier ou souhaitez changer le message du commit, cette commande permet de réécrire le dernier commit sans en créer un nouveau. Cela modifie l’historique du commit précédent.

Exemple :
```bash
git commit --amend -m "Nouveau message pour ce commit"
```

---

## **branch**

- `git branch` : Liste les branches locales dans votre projet Git. Cette commande vous permet également de créer, renommer ou supprimer des branches.
- `git branch <nom-de-la-branche>` : Crée une nouvelle branche.
- `git branch -d <nom-de-la-branche>` : Supprime une branche locale.

Exemple :
```bash
git branch nouvelle-branche
```

---

## **checkout**

- `git checkout` : Permet de naviguer entre les branches ou de revenir à un état spécifique dans votre projet, comme une révision antérieure ou un commit spécifique.
- `git checkout <nom-de-la-branche>` : Bascule vers une autre branche.
- `git checkout -b <nom-de-la-branche>` : Crée une nouvelle branche et bascule dessus.

Exemple :
```bash
git checkout dev
```

---

## **cherry-pick**

Voici une version corrigée et améliorée de la section sur `git cherry-pick` pour plus de clarté :

---

## **cherry-pick**

- `git cherry-pick` : Permet d’appliquer un commit spécifique d’une branche à une autre, sans fusionner toute la branche. Cela est particulièrement utile lorsque vous souhaitez transférer un commit précis d'une branche vers une autre sans affecter l'ensemble de l'historique de la branche source.

Exemple :
```bash
git cherry-pick <hash-du-commit>
```

---

## **reset**

- `git reset` : Réinitialise l'index, en annulant les modifications. Vous pouvez l'utiliser pour revenir à un état précédent du dépôt.
- `git reset --hard` : Réinitialise à un commit précédent, en supprimant toutes les modifications non validées.

Exemple :
```bash
git reset --hard HEAD~1
```

---

## **revert**

- `git revert` : Crée un commit inverse d'un commit spécifique. Contrairement à `git reset`, il ne modifie pas l'historique, mais crée un nouveau commit qui annule un commit précédent.

Exemple :
```bash
git revert <hash-du-commit>
```

---

## **rebase avec -i**

- `git rebase -i` : Lance un rebase interactif, vous permettant de réécrire l’historique des commits, d'en combiner, de les réorganiser, ou même de les supprimer.

Exemple :
```bash
git rebase -i HEAD~3
```
Cela vous permet de modifier les trois derniers commits.

---

## **merge**

- `git merge` : Fusionne les modifications d’une branche dans une autre. Cela crée un commit de fusion.

Exemple :
```bash
git merge feature-branch
```

---

## **clone**

- `git clone` : Crée une copie locale d’un dépôt distant. Cette commande permet de récupérer l’intégralité d’un dépôt Git, y compris son historique et ses branches.

Exemple :
```bash
git clone <url-du-dépôt>
```

---

## **fetch**

- `git fetch` : Récupère les modifications depuis un dépôt distant sans les fusionner avec la branche actuelle. Il télécharge les nouveaux commits, mais n'effectue pas de mise à jour dans la branche active.

Exemple :
```bash
git fetch origin
```

---

## **pull avec --rebase**

- `git pull --rebase` : Récupère les modifications depuis le dépôt distant et les applique sur la branche locale en utilisant un rebase, ce qui réécrit l’historique des commits locaux pour qu'ils apparaissent comme étant effectués après les commits distants.

Exemple :
```bash
git pull --rebase
```

---

## **describe**

- `git describe` : Donne un nom humainement lisible à un commit en se basant sur la dernière étiquette et l’historique des commits. Cela permet de donner un nom approximatif à un commit, utile dans les processus de versionnement.

Exemple :
```bash
git describe --tags
```

---

## **bisect**

- `git bisect` : Permet de trouver un commit qui a introduit un bug en utilisant une méthode de recherche binaire. Cela est utile pour localiser la régression dans le code.

Exemple :
```bash
git bisect start
git bisect bad
git bisect good <commit-bon>
```

---

## **tag**

- `git tag` : Crée une étiquette (tag) dans l'historique des commits. Cela permet de marquer des versions spécifiques du projet, souvent utilisées pour les versions stables.

Exemple :
```bash
git tag v1.0.0
```

---

## **push avec les origin source:destiner**

- `git push origin source:destination` : Cette commande permet de pousser des modifications d'une branche locale vers une branche distante. Vous pouvez l'utiliser pour envoyer vos commits locaux sur une branche distante spécifique.

Exemple :
```bash
git push origin feature-branch:main
```

Cela enverra les modifications de la branche locale `feature-branch` vers la branche distante `main`.
