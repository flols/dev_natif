import 'package:flutter/material.dart';
import '../data/data.dart';
import '../pages/inventaire_page.dart';
import '../models/recette.dart';
import '../models/ressource.dart';

class RecettePage extends StatefulWidget {
  const RecettePage({super.key});

  @override
  State<RecettePage> createState() => _RecettePageState();
}

class _RecettePageState extends State<RecettePage> {
  List<String> itemsProduits = [];

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
                return RecetteWidget(
                  recette: recettes[index],
                  itemsProduits: itemsProduits,
                  onProduireObjet: (recette) {
                    setState(() {
                      itemsProduits.add(recette.nom);
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            InventairePage(itemsProduits: itemsProduits),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RecetteWidget extends StatefulWidget {
  final Recette recette;
  final List<String> itemsProduits;
  final Function(Recette) onProduireObjet;

  const RecetteWidget({
    super.key,
    required this.recette,
    required this.itemsProduits,
    required this.onProduireObjet,
  });

  @override
  State<RecetteWidget> createState() => _RecetteWidgetState();
}

class _RecetteWidgetState extends State<RecetteWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          widget.recette.nom,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.recette.description),
            Text('Gameplay: ${widget.recette.gameplay}'),
            const Text(
              'Coût:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            RessourceCostWidget(cout: widget.recette.cout),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: widget.recette.areResourcesAvailable(ressources)
                  ? () {
                      widget.onProduireObjet(widget.recette);
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.recette.areResourcesAvailable(ressources)
                    ? Colors.blue // color enable
                    : Colors.grey, // color disable
              ),
              child: const Text('Produire'),
            ),
          ],
        ),
      ),
    );
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
