import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 300,
                  width: 300,
                  child: Image.network(
                      "https://avatars.githubusercontent.com/u/80614973?v=4")),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 300,
                  width: 300,
                  child: Image.network(
                      "https://avatars.githubusercontent.com/u/80614973?v=4")),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 300,
                  width: 300,
                  child: Image.network(
                      "https://avatars.githubusercontent.com/u/80614973?v=4")),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 300.00,
                height: 200.00,
                //if BoxDecoration used than color must be used inside boxDecoration
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  'Container with box decoration',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 300.00,
                height: 200.00,
                //if BoxDecoration used than color must be used inside boxDecoration
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  'Container with box decoration',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 300.00,
                height: 200.00,
                //if BoxDecoration used than color must be used inside boxDecoration
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  'Container with box decoration',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 300.00,
                height: 200.00,
                //if BoxDecoration used than color must be used inside boxDecoration
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  'Container with box decoration',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 300.00,
                height: 200.00,
                //if BoxDecoration used than color must be used inside boxDecoration
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  'Container with box decoration',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 300.00,
                height: 200.00,
                //if BoxDecoration used than color must be used inside boxDecoration
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  'Container with box decoration',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 300.00,
                height: 200.00,
                //if BoxDecoration used than color must be used inside boxDecoration
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  'Container with box decoration',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
