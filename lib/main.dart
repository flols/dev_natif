import 'package:flutter/material.dart';
import 'pages/recette_page.dart';
import 'pages/inventaire_page.dart';
import 'pages/ressources_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ressources'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RecettePage()),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InventairePage(
                          itemsProduits: [],
                        )),
              );
            },
            icon: const Icon(Icons.backpack),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: ressources.length,
        itemBuilder: (BuildContext context, int index) {
          return RessourceWidget(ressource: ressources[index]);
        },
      ),
    );
  }
}

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
