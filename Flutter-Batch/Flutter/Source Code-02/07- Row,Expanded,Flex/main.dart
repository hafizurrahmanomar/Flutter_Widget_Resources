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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Container(height: 300, color: Colors.blue,alignment: Alignment.center,child: const Text("This is Container-01"),)),
          Expanded(flex: 5, child: Container(height: 300,color: Colors.grey,alignment: Alignment.center,child: const Text("Expanded always Total area equal distribution-02"),)),
          Expanded(flex: 3, child: Container(height: 300,color: Colors.red,alignment: Alignment.center, child: const Text("This is Container -03"))),
        ],
      ),
    );
  }
}
