
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String bTN1 = "Button";

Color btnColor = Colors.deepOrange;

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
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(title: const Text("set State",style: TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.bold,
        fontSize: 45.0,
      ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
               //color:btnColor,
                child: Text(bTN1), onPressed: (){
                setState(() {
                  bTN1 = "Button Clicked Now";
                  btnColor=Colors.purple;
                });
              },)

            ],
          ),
        ),
      ),
    );
  }
}

