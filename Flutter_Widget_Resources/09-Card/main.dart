import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

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
        appBar: AppBar(title: const Text("Card"),),
        body: Container(
          width: 300,
          height: 300,
          child: const Card(
            color: Colors.blue,
            elevation: 7.0,
            child: ListTile(
              title: Text(" This is My Card Title"),
              subtitle: Text("Tis is My Subtitle"),
              leading: Icon(Icons.favorite_border,color: Colors.red,size: 50.0,),
              trailing: Icon(Icons.arrow_forward_ios,color:Colors.yellow),

            ),
          ),
        )
    );
  }
}
