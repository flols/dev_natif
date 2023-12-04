import 'package:flutter/material.dart';
import '../data/data.dart';

class RecettePage extends StatefulWidget {
  const RecettePage({super.key});

  @override
  State<RecettePage> createState() => _RecettePageState();
}

class _RecettePageState extends State<RecettePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recettes'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Recettes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recettes.length,
              itemBuilder: (BuildContext context, int index) {
                return RecetteWidget(recette: recettes[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RecetteWidget extends StatelessWidget {
  final Recette recette;

  const RecetteWidget({super.key, required this.recette});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          recette.nom,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(recette.description),
            Text('Gameplay: ${recette.gameplay}'),
            Text(
              'Coût:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            RessourceCostWidget(cout: recette.cout),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: () {
                produireObjet(recette.nom);
              },
              child: const Text('Produire'),
            ),
          ],
        ),
      ),
    );
  }

  void produireObjet(String nomObjet) {
    print('Objet produit : $nomObjet');
    // TODO: implémenter la production d'objet
  }
}

class RessourceCostWidget extends StatelessWidget {
  final List<RessourceQuantite> cout;

  const RessourceCostWidget({super.key, required this.cout});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: cout
          .map(
            (ressource) => Text('${ressource.quantite} ${ressource.nom}, '),
          )
          .toList(),
    );
  }
}
