

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Column And Row Details'),),


      body:SingleChildScrollView(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Column Start'),
            const Text('Subahanallah'),
            const Text('সুবহানাল্লাহ'),
            const Text('Alhamdulillah'),
            const Text('আলহামদুলিল্লাহ'),
            const Text('Allahuakbar'),
            const Text('আল্লাহু আকবার'),
            const Text('La- Elaha Ellallah'),
            const Text('লা-ইলাহা ইল্লাল্লাহ'),
            const Text('Column End'),
            Row(   //mainAxisSize: MainAxisSize.min,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.end,
              //mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Cloumn in Row Start'),
                const Text('Subahanallah'),
                const Text('সুবহানাল্লাহ'),
                const Text('Alhamdulillah'),
                const Text('আলহামদুলিল্লাহ'),
                const Text('Allahuakbar'),
                const Text('আল্লাহু আকবার'),
                const Text('Cloumn in Cloumn End'),

                Image.asset('images/logo.png'),

                const Text('Cloumn in Row Start'),
                const Text('Subahanallah'),
                const Text('সুবহানাল্লাহ'),
                const Text('Alhamdulillah'),
                const Text('আলহামদুলিল্লাহ'),
                const Text('Allahuakbar'),
                const Text('আল্লাহু আকবার'),
                const Text('Cloumn in Cloumn End'),

              ],
            ),
            const Column(
              //mainAxisSize: MainAxisSize.min,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Text('Cloumn in Cloumn Start'),
                Text('Allahuakbar'),
                Text('আল্লাহু আকবার'),
                Text('La- Elaha Ellallah'),
                Text('লা-ইলাহা ইল্লাল্লাহ'),
                Text('Cloumn in Cloumn End'),

              ],
            ),
          ],
        ),
      ),
    );
  }
}