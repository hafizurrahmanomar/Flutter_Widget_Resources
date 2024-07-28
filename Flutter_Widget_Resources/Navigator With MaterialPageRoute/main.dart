import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {

    return const CupertinoApp(
      home: CupertinoHomeScreen(),
    );
  }
}

class CupertinoHomeScreen extends StatelessWidget {
  const CupertinoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
          middle: Text('Home'),
          backgroundColor: Colors.grey,
          leading: Icon(CupertinoIcons.home, size: 18,)
      ),
      child: Column(
        children: [
          CupertinoButton(child: const Text('Tap here'), onPressed: () {}),
          CupertinoButton.filled(child: const Text('Tap here'), onPressed: () {}),
          ElevatedButton(child: const Text('Tap here'), onPressed: () {}),
        ],
      ),
    );
  }
}



