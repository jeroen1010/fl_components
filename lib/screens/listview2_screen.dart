import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Targaryen', 'Stark', 'Lanister', 'Baratheon'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2'),
      ),
      body: ListView.separated(itemBuilder:(context, index) => ListTile(
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            title:Text(options[index]),
          ), separatorBuilder:(context, index) => const Divider(), itemCount: options.length)
    );
  }
}