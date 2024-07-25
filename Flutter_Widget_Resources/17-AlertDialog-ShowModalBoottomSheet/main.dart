

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Cloumn And Row Details'),),


      body:Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                //showAboutDialog(context: context);
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('This is alert Dialog'),
                        content: const Text('This alert message'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Are you back now!'),
                          )
                        ],
                      );
                    });
              },
              child: const Text('AlertDialog')),

          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.yellow,
                  barrierColor: Colors.pink.shade300,
                  context: context,
                  builder: (_) {
                    return const Column(
                      children: [
                        Text('Message'),
                        Text('Hello world'),
                      ],
                    );
                  });
            },
            child: const Text('SowModalBottomSheet'),
          ),
        ],
      ),
    );
  }
}
