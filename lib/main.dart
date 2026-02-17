import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notas Unison',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF00529E), // Azul Unison
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF00529E),
          secondary: const Color(0xFFF8BB00), // Dorado Unison
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF00529E),
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFF8BB00),
          foregroundColor: Color(0xFF015294),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}