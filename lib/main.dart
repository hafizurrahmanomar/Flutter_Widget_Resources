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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              color: Colors.green,
              height: 400,
              width: 400,
            ),

            Positioned(
              left: 125,
              top: 125,
              child: Container(
                color: Colors.red,
                height: 125,
                width: 125,
              ),
            ),
            Positioned.fill(
              child: Align(
                // Other Option available
                alignment: Alignment.topCenter,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}




























































































