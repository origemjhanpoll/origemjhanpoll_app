import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData.light();

final ThemeData darkForestTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF145A32), // verde escuro
  scaffoldBackgroundColor: Colors.black, // fundo preto predominante
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  colorScheme: ColorScheme.dark(
    primary: const Color(0xFF27AE60), // verde folha
    secondary: const Color(0xFF229954), // verde médio
    surface: Colors.black, // fundo preto predominante
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF229954),
      foregroundColor: Colors.white,
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFF229954),
      foregroundColor: Colors.white,
    ),
  ),
);
