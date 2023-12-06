import 'package:flutter/material.dart';

// Classe ressource
class Ressource {
  final String nom;
  final Color couleur;
  final String description;
  int quantite;

  // Constructeur
  Ressource({
    required this.nom,
    required this.couleur,
    required this.description,
    required this.quantite,
  });
}

// Classe ressource avec une quantité spécifique
class RessourceQuantite {
  final String nom;
  final int quantite;

  RessourceQuantite({
    required this.nom,
    required this.quantite
  });
}
