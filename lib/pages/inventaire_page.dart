import 'package:flutter/material.dart';

class InventairePage extends StatelessWidget {
  final List<String> itemsProduits;

  const InventairePage({super.key, required this.itemsProduits});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventaire'),
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
                    "Inventaire",
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
              itemCount: itemsProduits.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(itemsProduits[index]),
                    trailing: const Text("Quantité:"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
