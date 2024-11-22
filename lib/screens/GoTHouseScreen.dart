import 'package:flutter/material.dart';
import 'package:fl_components/widgets/HouseCard.dart';

class GoTHouseScreen extends StatelessWidget {
  const GoTHouseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casas de Juego de Tronos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          HouseCard(
            imageUrl: 'https://example.com/stark.jpg',
            houseName: 'Casa Stark',
            description: 'Los Stark son la principal familia del Norte. Su lema es "Se acerca el invierno".',
          ),
          SizedBox(height: 10),
          HouseCard(
            imageUrl: 'https://example.com/lannister.jpg',
            houseName: 'Casa Lannister',
            description: 'Los Lannister son conocidos por su riqueza y poder. Su lema es "Oye mi rugido".',
          ),
          SizedBox(height: 10),
          HouseCard(
            imageUrl: 'https://example.com/targaryen.jpg',
            houseName: 'Casa Targaryen',
            description: 'Los Targaryen son de sangre valyria y antiguos reyes. Su lema es "Fuego y Sangre".',
          ),
          SizedBox(height: 10),
          HouseCard(
            imageUrl: 'https://example.com/baratheon.jpg',
            houseName: 'Casa Baratheon',
            description: 'Los Baratheon son una de las Grandes Casas. Su lema es "Nuestra es la furia".',
          ),
        ],
      ),
    );
  }
}
