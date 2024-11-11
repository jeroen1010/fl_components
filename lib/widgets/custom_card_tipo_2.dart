import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://wallpapercat.com/w/full/a/2/9/76539-2560x1442-desktop-hd-anuel-aa-background-image.jpg')
          )
        ]
      )
    );
  }
}