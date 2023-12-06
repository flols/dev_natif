import 'package:flutter/material.dart';
import '../models/ressource.dart';

// Classe ressource
class Recette {
  final String nom;
  final List<RessourceQuantite> cout;
  final String gameplay;
  final String type;
  final String description;

  // Constructeur
  Recette({
    required this.nom,
    required this.cout,
    required this.gameplay,
    required this.type,
    required this.description,
  });

  // Vérifie si les ressources sont disponibles
  bool areResourcesAvailable(List<Ressource> ressources) {
    for (var ressourceQuantite in cout) {
      var ressource = ressources.firstWhere(
        (r) => r.nom == ressourceQuantite.nom,
        orElse: () => Ressource(
          nom: '',
          couleur: Colors.transparent,
          description: '',
          quantite: 0,
        ),
      );

      // Si la ressource n'existe pas ou si la quantité est insuffisante
      if (ressource.quantite < ressourceQuantite.quantite) {
        return false;
      }
    }
    return true; // Ressources disponibles
  }
}
