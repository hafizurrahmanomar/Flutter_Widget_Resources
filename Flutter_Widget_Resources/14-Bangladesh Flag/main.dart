import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BangladesFlag(),
    );
  }
}


/// KISS - Keep It Simple, Stupid

class BangladesFlag extends StatefulWidget {
  const BangladesFlag({super.key});

  @override
  State<BangladesFlag> createState() => _BangladesFlagState();
}

class _BangladesFlagState extends State<BangladesFlag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bangladesh Flag', textAlign: TextAlign.center),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 200,
          color: Colors.green,
          child: Container(
            margin: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}



