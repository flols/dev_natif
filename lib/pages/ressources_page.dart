import 'package:flutter/material.dart';
import '../models/ressource.dart';

class RessourceWidget extends StatefulWidget {
  final Ressource ressource;

  const RessourceWidget({super.key, required this.ressource});

  @override
  State<RessourceWidget> createState() => _RessourceWidgetState();
}

class _RessourceWidgetState extends State<RessourceWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: widget.ressource.couleur,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.ressource.description,
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
                widget.ressource.quantite++;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Text(
              'Miner',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Text(
            'Ressources: ${widget.ressource.quantite}',
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
