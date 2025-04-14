import 'package:flutter/material.dart';
import 'package:todo/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 95, 9)), // Theme's primary color
        useMaterial3: true, // Enables Material 3 UI
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow, // AppBar follows the theme
          foregroundColor: Colors.white, // Ensures text/icons are visible
        ),
      ),
      home: const HomePage(),
    );
  }
}

