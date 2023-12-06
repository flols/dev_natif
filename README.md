# Flutter

## Description du Projet

Le jeu une application Android de clicker game ou incremental game, dans la tradition du célèbre Universal Paperclips crée par Frank Lantz en 2017. Le jeu doit permettre de gérer un stock de ressources à collecter et dépenser. Voici la liste de ressources de départ: Bois, Minerai de fer brut, Minerai de cuivre brut. La personne qui joue doit pouvoir cliquer sur chaque ressource pour en récolter 1 unité. Les ressources récoltées permettent de débloquer des recettes et de nouveaux éléments de gameplay pour progresser dans le jeu, et ainsi de suite

## Installation

## Prérequis

- Flutter (Dernière version stable)
- Dart SDK (Compatible avec la version de Flutter)

```bash

# Clonage du repo
git clone https://github.com/flols/dev_natif.git
cd dev_natif

# Installation des dépendances
flutter pub get

# Lancer l'application en mode développement
flutter run
```

## Fonctionnalités
- Page d'Accueil "Ressources" :
 Utilisation un widget **GridView** pour présenter les ressources disponibles avec un bouton Miner pour récolter les ressources.

- Page "Recettes" :   
Affichage de la liste des recettes avec un **ListView** et production des objets grâce au bouton produire. On doit avoir miné les ressources nécessaires pour produire la recette.

- Page "Inventaires" :   
 Affichage des recettes produites.

 ## Difficulté
- Persister les recettes produites sur la page Inventaire

- Je me suis arrêté à la récupération des recettes produites et je n'ai pas pu ajouter la fonctionnalité décrémentée les ressources une fois les recettes produites.
