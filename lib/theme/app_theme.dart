import 'package:flutter/material.dart';

class AppTheme {
  //Color primario
  //
  static const Color primary = Colors.deepOrange;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color primario
        primaryColor: primary,
        //Appbar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: primary,
        )
  );
}