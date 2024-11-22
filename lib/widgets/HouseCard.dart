import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String houseName; // Agregado para mostrar el nombre de la casa

  const HouseCard({
    Key? key,
    required this.imageUrl,
    required this.description,
    required this.houseName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1500),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              houseName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
