import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Column(
          children: [
            TextFormField(
              autofocus: true,
              //initialValue: 'Escriba algo',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print('value: $value');
              },
              validator: (value) {
                if (value!.length < 3){
                  return 'Mínimo 3 caracteres';
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: 'Nombre y apellido',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                //prefixIcon: Icon(Icons.verified_user_outlined),
                //icon: Icon(Icons.assignment_ind_outlined),
                suffixIcon: Icon(Icons.person_2_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
              )
          ]
         ),
      ),
    );
  }
}