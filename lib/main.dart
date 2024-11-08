import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Para quitar la etiqueta fea esa debug de la esquina superior derecha
      title: 'Material App',
      //home: const Listview2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      //Para evitar que se muestren errores al usaurio cuando la ruta no existe
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      },
    );
  }
}