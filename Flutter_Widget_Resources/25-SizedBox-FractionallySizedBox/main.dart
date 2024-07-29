import 'package:flutter/material.dart';

/// SizedBox
/// FractionallySizedBox

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [

           const SizedBox(
            width: 100,
            height: 100,
            child: Text('safjsdjfskdjf ksdkf jkdj fdj AD JSKJ S  SDJ SKDJK SJD S JKJS DSKD JKASKDJSK K JKSDJ S '),
          ),
          const SizedBox(
            height: 500,
            width: 2000,
            child: FractionallySizedBox(
              heightFactor: 0.9,
              widthFactor: 0.7,
              alignment: Alignment.center,
              child: Text('sjf klsdjfjsdf jsdjf ksdjkf ls'),
            ),
          ),
          const SizedBox(
            width: 100,
            height: 100,
            child: Text('sdfsdf'),
          ),
          SizedBox(
            width: 100,
            child: AspectRatio(
              aspectRatio: 2/2,
              child: Container(
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}