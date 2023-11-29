import 'package:flutter/material.dart';

class Produit {
  final String nom;
  final int quantite;

  Produit(this.nom, this.quantite);
}

class InventairePage extends StatefulWidget {
  const InventairePage({super.key});

  @override
  State<InventairePage> createState() => _InventairePageState();
}

class _InventairePageState extends State<InventairePage> {
  List<Produit> getInventaireProduits() {
    List<Produit> inventaireProduits = [
      Produit("Produit 1", 10),
      Produit("Produit 2", 5),
      Produit("Produit 3", 3),
    ];

    return inventaireProduits;
  }

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Inventaire",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: getInventaireProduits().length,
                    itemBuilder: (context, index) {
                      Produit produit = getInventaireProduits()[index];
                      return ListTile(
                        title: Row(
                          children: [
                            Expanded(child: Text(produit.nom)),
                            Text("Quantité: ${produit.quantite}"),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
