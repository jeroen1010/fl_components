import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, //Cuando lago se sale del contenedor se corta (los bordes de la imagen se redondean)
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15) //Redondea el borde
      ),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage('https://wallpapercat.com/w/full/a/2/9/76539-2560x1442-desktop-hd-anuel-aa-background-image.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 200,
            //fit: BoxFit.cover, //Se adapta a todo el tamaño de widget
            fadeInDuration: Duration(milliseconds: 3000),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(top:10, bottom: 10, right: 20),
            child: const Text('Anuel AA')
          )
        ]
      )
    );
  }
}