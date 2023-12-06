import '../models/ressource.dart';

class Recette {
  final String nom;
  final List<RessourceQuantite> cout;
  final String gameplay;
  final String type;
  final String description;

  Recette({
    required this.nom,
    required this.cout,
    required this.gameplay,
    required this.type,
    required this.description,
  });

  get quantiteProduite => null;
}
