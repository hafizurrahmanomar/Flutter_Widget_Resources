import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Flutter Container Design"),
    ),
    body:Container(
    width: 400,
    height: 300,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
    //padding: const EdgeInsets.all(32),
    // padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
    // padding: EdgeInsets.zero,
    // padding: const EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 30),
    /// Same to Padding
    margin: const EdgeInsets.only(left: 20,right: 20),
    color: Colors.amber,
    /// Other Option Available
    alignment: Alignment.center,

    decoration: BoxDecoration(
    /// Other Option Available
    // borderRadius: BorderRadius.circular(10),
    borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(6),
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(12),
    ),
    /// Other Option Available
    border: Border.all(
    color: Colors.red,
    width: 10,
    //strokeAlign: 10.0,
    style: BorderStyle.solid,
    ),
    /// if shape used than border radius disable
    shape: BoxShape.circle,
    ),
    child: const Column(
    children: [
    Text("This Is Container"),
    ],
    ),
    ));
    }
}
