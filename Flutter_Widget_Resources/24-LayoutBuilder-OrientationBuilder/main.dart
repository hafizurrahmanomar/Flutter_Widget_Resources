import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints);
          if (constraints.maxWidth < 300) {
            return const Text('Tiny device');
          } else if (constraints.maxWidth < 500) {
            return const Text('Normal device');
          } else if (constraints.maxWidth < 700) {
            return const Text('Tablet device');
          } else if (constraints.maxWidth < 1200) {
            return const Text('Laptop device');
          } else {
            return const Text('Too large');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*

 body:  OrientationBuilder(
                builder: (context, orientation) {
                  print(orientation);
                  if (orientation == Orientation.portrait) {
                    return const Text('Screen looks good');
                  } else if (orientation == Orientation.landscape){
                    return const Text('Screen is too wider');
                  } else {
                    return const Text('Unknown');
                  }
                },
              ),
 */
