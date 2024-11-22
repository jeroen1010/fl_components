import 'package:flutter/material.dart';
import 'package:fl_components/widgets/HouseCard.dart';


class Listview1Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];

  const Listview1Screen({Key? key}) : super(key: key);

  // Lista de datos para las casas
  final houseData = const [
    {
      'name': 'Casa Targaryen',
      'description': 'Los Targaryen son de sangre valyria y antiguos reyes. Su lema es "Fuego y Sangre".',
      'imageUrl': 'https://example.com/targaryen.jpg',
    },
    {
      'name': 'Casa Stark',
      'description': 'Los Stark son la principal familia del Norte. Su lema es "Se acerca el invierno".',
      'imageUrl': 'https://example.com/stark.jpg',
    },
    {
      'name': 'Casa Lannister',
      'description': 'Los Lannister son conocidos por su riqueza y poder. Su lema es "Oye mi rugido".',
      'imageUrl': 'https://example.com/lannister.jpg',
    },
    {
      'name': 'Casa Baratheon',
      'description': 'Los Baratheon son una de las Grandes Casas. Su lema es "Nuestra es la furia".',
      'imageUrl': 'https://example.com/baratheon.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casas de Juego de Tronos'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              // Navega a una nueva pantalla usando Navigator
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(title: Text(houseData[index]['name']!)),
                    body: Center(
                      child: HouseCard(
                        imageUrl: houseData[index]['imageUrl']!,
                        houseName: houseData[index]['name']!,
                        description: houseData[index]['description']!,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
