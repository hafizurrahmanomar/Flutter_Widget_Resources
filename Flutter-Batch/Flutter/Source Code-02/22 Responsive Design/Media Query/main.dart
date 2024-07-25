
import 'package:flutter/material.dart';


import 'style.dart';


main(){
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        home: HomeActivity()
    );
  }
}



class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text( "Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello Flutter',style: HeadLine(context)),
        ],
      ),
    );
  }
}

