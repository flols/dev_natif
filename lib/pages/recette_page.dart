import 'package:flutter/material.dart';

class RecettePage extends StatefulWidget {
  const RecettePage({super.key});

  @override
  State<RecettePage> createState() => _RecettePageState();
}

class _RecettePageState extends State<RecettePage> {
  @override
  Widget build(BuildContext context) {
    List<Recipe> recipes = [
      Recipe(
        name: 'Hache',
        cost: '2 Bois, 2 Ironrod',
        gameplay: 'Récolter le bois 3 par 3',
        type: 'Outil',
        description: 'Un outil utile',
      ),
      Recipe(
        name: 'Pioche',
        cost: '2 Bois, 3 Ironrod',
        gameplay: 'Récolter les minerais 5 par 5',
        type: 'Outil',
        description: 'Un outil utile',
      ),
      Recipe(
        name: 'Lingot de fer',
        cost: '1 Minerai de fer',
        gameplay: 'Débloque d’autres recettes',
        type: 'Matériau',
        description: 'Un lingot de fer pur',
      ),
      Recipe(
        name: 'Plaque de fer',
        cost: '3 Minerai de fer pour 2 plaques de métal',
        gameplay: 'Débloque d’autres recettes',
        type: 'Matériau',
        description: 'Une plaque de fer pour la construction',
      ),
      Recipe(
        name: 'Lingot de cuivre',
        cost: '1 Minerai de cuivre',
        gameplay: 'Débloque d’autres recettes',
        type: 'Matériau',
        description: 'Un lingot de cuivre pur',
      ),
      Recipe(
        name: 'Tige en métal',
        cost: '1 Lingot de fer',
        gameplay: 'Débloque d’autres recettes',
        type: 'Matériau',
        description: 'Une tige de métal',
      ),
      Recipe(
        name: 'Fil électrique',
        cost: '1 Lingot de cuivre',
        gameplay: 'Débloque d’autres recettes',
        type: 'Composant',
        description:
            'Un fil électrique pour fabriquer des composants électroniques',
      ),
      Recipe(
        name: 'Mineur',
        cost: '10 Plaque de fer, 5 Fil électrique',
        gameplay:
            'Permet de transformer automatiquement d’extraire du minerai de fer ou cuivre',
        type: 'Bâtiment',
        description: 'Un bâtiment qui permet d’automatiser le minage',
      ),
      Recipe(
        name: 'Fonderie',
        cost: '5 Fil électrique, 8 Tige en métal',
        gameplay:
            'Permet de transformer automatiquement du minerai de fer ou cuivre en lingot de fer ou cuivre',
        type: 'Bâtiment',
        description: 'Un bâtiment qui permet d’automatiser la production',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recettes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          Recipe recipe = recipes[index];
          return ListTile(
            title: Text(
              recipe.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coût: ${recipe.cost}',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Type: ${recipe.type}',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Description: ${recipe.description}',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0), 
                ),
              ),
              child: const Text(
                'Produire',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Recipe {
  final String name;
  final String cost;
  final String gameplay;
  final String type;
  final String description;

  Recipe({
    required this.name,
    required this.cost,
    required this.gameplay,
    required this.type,
    required this.description,
  });
}
