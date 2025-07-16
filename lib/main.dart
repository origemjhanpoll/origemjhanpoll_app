import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'app/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkForestTheme,
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
