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
          RichText(
            text: TextSpan(
                text: 'Alhamdulillah=>',
                style: TextStyle(
                  color: Colors.purple.shade400,
                  fontSize: 35,
                  //decoration: TextDecoration.underline,
                ),
                children: [
                  TextSpan(
                    text: 'Please Subscribe:',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber.shade700,
                    ),
                  ),
                  const TextSpan(
                    text: 'My Youtube Channel',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff5900ff),
                    ),
                  ),
                  const TextSpan(
                    text: 'Web App Developer BD',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xffff5d00),
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
