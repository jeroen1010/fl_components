import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          CustomCardTipo2(imageUrl: 'https://wallpapercat.com/w/full/a/2/9/76539-2560x1442-desktop-hd-anuel-aa-background-image.jpg',nombre: 'Anuel AA',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://images.alphacoders.com/999/999717.jpg', nombre: 'Ozuna',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl:'https://s1.elespanol.com/2024/09/11/aragon/actualidad/zaragoza/885171725_249091739_1024x576.jpg', nombre: 'Bryant Myers',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://i.pinimg.com/736x/67/93/38/67933891c5eb8793292560fc65f206ff.jpg', nombre: 'Hades 66',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://wallpapers.com/images/hd/jhay-cortez-double-ok-hand-sign-el8hm4skbmsex59g.jpg',),
          SizedBox(height: 10),
        ],
      )
    );
  }
}