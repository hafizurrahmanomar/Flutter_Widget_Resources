import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Expanded,SizeBox'),
    );
  }
}


class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(title),
      ),
      body: const Column(

        children: [
          SizedBox(
            height: 200.0,
            width: 200.0,
            child: Text(
              "Size Box Practice",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200.0,
            width: 200.0,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.5,
              alignment: Alignment.center,
              child: Text("FractionallySizedBox Practice"),
            ),
          ),
        ],
        ///SizeBox Practice End

      ),
    );
  }
}
