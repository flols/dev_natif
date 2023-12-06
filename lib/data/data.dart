import 'package:flutter/material.dart';
import '../models/ressource.dart';
import '../models/recette.dart';

List<Ressource> ressources = [
  Ressource(
      nom: 'Bois',
      couleur: const Color(0xFF967969),
      description: 'Bois brut'),
  Ressource(
      nom: 'Minerai de fer',
      couleur: const Color(0xFFCED4DA),
      description: 'Minerai de fer brut'),
  Ressource(
      nom: 'Minerai de cuivre',
      couleur: const Color(0xFFD9480F),
      description: 'Minerai de cuivre brut'),
  Ressource(
      nom: 'Charbon',
      couleur: const Color(0xFF000000),
      description: 'Minerai de charbon'),
];

List<Recette> recettes = [
  Recette(
    nom: 'Hache',
    cout: [
      RessourceQuantite(nom: 'Bois', quantite: 2),
      RessourceQuantite(nom: 'Tige en métal', quantite: 2),
    ],
    gameplay: 'Récolter le bois 3 par 3 (3 par click)',
    type: 'Outil',
    description: 'Un outil utile',
  ),
  Recette(
    nom: 'Pioche',
    cout: [
      RessourceQuantite(nom: 'Bois', quantite: 2),
      RessourceQuantite(nom: 'Tige en métal', quantite: 3),
    ],
    gameplay: 'Récolter les minerais 5 par 5 (5 par click)',
    type: 'Outil',
    description: 'Un outil utile',
  ),
  Recette(
    nom: 'Lingot de fer',
    cout: [
      RessourceQuantite(nom: 'Minerai de fer', quantite: 1),
    ],
    gameplay: 'Débloque d’autres recettes',
    type: 'Matériau',
    description: 'Un lingot de fer pur',
  ),
  Recette(
    nom: 'Plaque de fer',
    cout: [
      RessourceQuantite(nom: 'Minerai de fer', quantite: 3),
    ],
    gameplay: 'Débloque d’autres recettes',
    type: 'Matériau',
    description: 'Une plaque de fer pour la construction',
  ),
  Recette(
    nom: 'Lingot de cuivre',
    cout: [
      RessourceQuantite(nom: 'Minerai de cuivre', quantite: 1),
    ],
    gameplay: 'Débloque d’autres recettes',
    type: 'Matériau',
    description: 'Un lingot de cuivre pur',
  ),
  Recette(
    nom: 'Tige en métal',
    cout: [
      RessourceQuantite(nom: 'Lingot de fer', quantite: 1),
    ],
    gameplay: 'Débloque d’autres',
    type: 'Matériau',
    description: 'Une tige de métal',
  ),
  Recette(
    nom: 'Fil électrique',
    cout: [
      RessourceQuantite(nom: 'Lingot de cuivre', quantite: 1),
    ],
    gameplay: 'Débloque d’autres recettes',
    type: 'Composant',
    description:
        'Un fil électrique pour fabriquer des composants électroniques',
  ),
  Recette(
    nom: 'Mineur',
    cout: [
      RessourceQuantite(nom: 'Plaque de fer', quantite: 10),
      RessourceQuantite(nom: 'Fil électrique', quantite: 5),
    ],
    gameplay: 'Permet d’extraire automatiquement du minerai de fer ou cuivre',
    type: 'Bâtiment',
    description: 'Un bâtiment qui permet d’automatiser le minage',
  ),
  Recette(
    nom: 'Fonderie',
    cout: [
      RessourceQuantite(nom: 'Fil électrique', quantite: 5),
      RessourceQuantite(nom: 'Tige en métal', quantite: 8),
    ],
    gameplay:
        'Permet de transformer automatiquement du minerai de fer ou cuivre en lingot de fer ou cuivre',
    type: 'Bâtiment',
    description: 'Un bâtiment qui permet d’automatiser la production',
  ),
];

