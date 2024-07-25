import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Only Text Practice',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF10C419),
      appBar: AppBar(
        leading: const Icon(Icons.home, color: Colors.black54, size: 32,),
        title: const Text('Home', style: TextStyle(
            color: Colors.black
        ),),
        backgroundColor: Colors.yellow,
        elevation: 5,
      ),
      body: Center(
        child: Text(

          'Hello,Web app Developer Bd.lete the flutter Practice'.toUpperCase(),
          //Hello,Web app Developer Bd.lete the flutter Practice'.toLowerCase(),
          //textAlign: TextAlign.center,
          //textAlign: TextAlign.start,
          //textAlign: TextAlign.justify,
          textAlign: TextAlign.center,
          //textAlign: TextAlign.left,
          //textAlign: TextAlign.right,
          //textAlign: TextAlign.end,

          maxLines: 3,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            // backgroundColor: Colors.grey,
            decoration: TextDecoration.underline,
            //decoration: TextDecoration.lineThrough,
            //decoration: TextDecoration.overline,
            //decoration: TextDecoration.none,
            wordSpacing: 4,
            letterSpacing: 5,
            overflow: TextOverflow.ellipsis,
            //overflow: TextOverflow.fade,
            //overflow: TextOverflow.clip,
            //overflow: TextOverflow.visible,


          ),
        ),
      ),

    );
  }
}
