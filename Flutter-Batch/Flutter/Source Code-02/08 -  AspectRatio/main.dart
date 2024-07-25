import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 10 / 5,
            //width:height(ex: Width 10 inc than height: 5 inch
            child: Container(
              width: double.infinity,
              color: Colors.brown,
            ),
          ),
          AspectRatio(
            aspectRatio: 10 / 1,
            child: Container(
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          AspectRatio(
            aspectRatio: 10 / 3,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
