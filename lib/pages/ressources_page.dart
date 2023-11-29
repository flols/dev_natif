import 'package:flutter/material.dart';

class Ressource extends StatefulWidget {
  final int index;

  const Ressource({super.key, required this.index});

  @override
  State<Ressource> createState() => _RessourceState();
}

class _RessourceState extends State<Ressource> {
  int quantity = 0;

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

    Color color = colors[widget.index];

    return Container(
      margin: const EdgeInsets.all(5.0), 
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            descriptions[widget.index],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 2.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(0, 33, 149, 243),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Text('Miner'),
          ),
          const SizedBox(height: 2.0),
          Text(
            'Ressources: $quantity',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
