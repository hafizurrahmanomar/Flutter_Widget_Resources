import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(' Practice'),
        backgroundColor: Colors.pink,
        elevation: 5,
        centerTitle: true,

        leading: IconButton(
            onPressed: () {
              // Handle back button press
            },
            icon: const Icon(Icons.arrow_back_ios_new)),


        actions: [
          IconButton(
            onPressed: () {
              // Handle search button press
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Subtitle or additional details',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Full Widget Practice',
              selectionColor: Colors.red,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.amber),
            ),
            const SizedBox(height: 20),
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: const Text(
                'Press Me',
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
              ],
            )
          ],
        ),
      ),
    );
  }
}
