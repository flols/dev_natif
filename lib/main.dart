import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 4, // 4 types de ressources
        itemBuilder: (BuildContext context, int index) {
          return Ressource(index: index);
        },
      ),
    );
  }
}

class Ressource extends StatelessWidget {
  final int index;

  const Ressource({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      const Color(0xFF967969), // Bois
      const Color(0xFFCED4DA), // Minerai de fer
      const Color(0xFFD9480F), // Minerai de cuivre
      const Color(0xFF000000), // Charbon
    ];

    List<String> descriptions = [
      'Bois brut',
      'Minerai de fer brut',
      'Minerai de cuivre brut',
      'Minerai de charbon',
    ];

    Color color = colors[index];

    return Container(
      color: color,
      child: Center(
        child: Text(
          descriptions[index],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
