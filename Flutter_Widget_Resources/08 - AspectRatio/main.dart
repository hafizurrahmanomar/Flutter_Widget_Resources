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
      body: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network('https://avatars.githubusercontent.com/u/80614973?v=4'),
                //width:height(ex: Width 16 inc than height: 9 inch
              ),
              const SizedBox(height: 20), // Adding spacing between the two AspectRatio widgets
              AspectRatio(
                aspectRatio: 16 / 3,
                child: Image.network('https://avatars.githubusercontent.com/u/80614973?v=4'),
              ),
              const SizedBox(height: 20), // Adding spacing between the two AspectRatio widgets
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.network('https://avatars.githubusercontent.com/u/80614973?v=4'),
              ),
            ],
          )
      ),
    );
  }
}
