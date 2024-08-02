import 'package:flutter/material.dart';


import 'home_screen.dart';


void main()=> runApp(const SumApp());

class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme:ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 15),
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
