import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre' : 'Andres',
      'apellido': 'Iniesta',
      'email' : 'iniesta@gmail.com',
      'password': '12345',
      'role': 'usuario'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Form(
          key: myFormKey,
           child: Column(
            children: [
              const CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                suffixIcon: Icons.person_2_rounded, 
                obscureText: false,
              ),
              const SizedBox(height: 30),
              const CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos del usuario',
                suffixIcon: Icons.person_4_rounded, 
                obscureText: false,
              ),
              const SizedBox(height: 30),
              const CustomTextFormField(
                hintText: 'E-Mail',
                labelText: 'E-Mail del usuario',
                suffixIcon: Icons.email_rounded,
                keyboardType: TextInputType.emailAddress, 
                obscureText: false,
              ),
              const SizedBox(height: 30),
              const CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                suffixIcon: Icons.email_rounded, 
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if(!myFormKey.currentState!.validate()) {
                    print('Formulario no válido');
                    return;
                  }
                }, 
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                  )
              )
            ]
           ),
         ),
      ),
    );
  }
}

