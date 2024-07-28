import 'package:flutter/material.dart';

void main() => runApp(
  MyApp(),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).orientation);
    // print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.aspectRatio);
    // print(MediaQuery.of(context).size.flipped);
    // print(MediaQuery.of(context).size.longestSide);
    // print(MediaQuery.of(context).size.shortestSide);
    // print(MediaQuery.of(context).displayFeatures);
    // print(MediaQuery.of(context).devicePixelRatio);
    //
    print(MediaQuery.sizeOf(context));
    print(MediaQuery.orientationOf(context));
    print(MediaQuery.devicePixelRatioOf(context));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warp,MediaQuery,layout Builder'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Scrollbar(
            thickness: 7.0,
            radius: Radius.circular(10.0),
            interactive: true,
            trackVisibility: true,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                      "It is a long established fact that a reader will be distracted by the readable content"),
                  Text("Hafizur Rhaman Omar"),
                  Text("Hafizur Rhaman Omar"),
                  Text("Hafizur Rhaman Omar"),
                  Text(
                      "It is a long established fact that a reader will be distracted by the readable content"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.end,
            runAlignment: WrapAlignment.start,
            spacing: 10,
            children: [
              Text(
                  "Hafizur Rhaman Omar,Hafizur Rhaman Omar Hafizur Rhaman Omar"),
              Text("Hafizur Rhaman Omar"),
              Text("Hafizur Rhaman Omar"),
              Text("Hafizur Rhaman Omar"),
              Text("Hafizur Rhaman Omar"),
            ],
          ),
        ],
      ),
    );
  }
}
