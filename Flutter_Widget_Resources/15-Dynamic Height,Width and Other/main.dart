
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String imageLink = " ";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: const Text("Dynamic Height,Width and Other"),
      ),
      body:  Center(

        child: Container(
          width: myWidth,
          height: myHeight,
          color: Colors.green,
          child: (
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      width: myWidth/2,
                      height: myHeight/3,
                      imageLink,alignment: Alignment.center),
                  const Text("This Is Dynamic Height Width Practice"),
                  const Text("This Is Alignment Practice"),
                  Image.asset(
                    'assets/images/hafizurrahmanomar.jpg',
                    //'assets/images/bird.jpg',
                    width: myWidth/2,
                    height: myHeight/3,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}