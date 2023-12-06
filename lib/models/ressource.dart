import 'package:flutter/material.dart';

class Ressource {
  final String nom;
  final Color couleur;
  final String description;
  int quantite;

  Ressource({
    required this.nom,
    required this.couleur,
    required this.description,
    required this.quantite,
  });
}

class RessourceQuantite {
  final String nom;
  final int quantite;

  RessourceQuantite({required this.nom, required this.quantite});
}
