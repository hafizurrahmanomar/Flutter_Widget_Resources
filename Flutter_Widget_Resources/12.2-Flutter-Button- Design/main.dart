import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Button "),
      ),
      body: Center(
        child: (Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// ElevatedButton
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,

                  /// Button Background Color
                  foregroundColor: Colors.white,

                  /// Button Text Color
                  minimumSize: const Size(300, 40),

                  /// width = 300 ,height=40,
                  maximumSize: const Size(300, 60),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                  //padding: const EdgeInsets.all(32),
                  // padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                  // padding: EdgeInsets.zero,
                  // padding: const EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 30),
                  elevation: 7,
                  shadowColor: Colors.deepOrange.shade400,

                  /// Other Option available
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),

                  /// Button Text Style
                  textStyle: const TextStyle(
                    color: Colors.deepOrange,

                    ///  Color No Apply,cause foreground color use
                    fontSize: 35.0,
                    fontWeight: FontWeight.w800,
                    wordSpacing: 10.0,
                    letterSpacing: 5.0,
                    decoration: TextDecoration.overline,

                    /// Other Option Available
                    backgroundColor: Colors.white,

                    /// Button Text Background Color
                  ),
                ),
                child: const Text("ElevatedButton"),
              ),

              /// TextButton
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(

                  /// Same to ElevatedButton Style apply.
                ),
                child: const Text("TextButton"),
              ),

              //// Icon Button

              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  // Same To Elevated Button Style
                    backgroundColor: Colors.orangeAccent),
                icon: const Icon(Icons.account_circle),
              ),

              ///FloatingActionButton with Label
              FloatingActionButton.extended(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 8,
                backgroundColor: Colors.deepOrange,
                isExtended: true,
                hoverColor: Colors.white,
                autofocus: true,
                focusColor: Colors.amber.shade400,
                focusElevation: 10,
                label: const Text("FloatingActionButton"),
              ),

              ///FloatingActionButton with child
              FloatingActionButton(
                onPressed: () {},
                //child: const Text("FloatingActionButton"),
                child: const Icon(Icons.add_circle),
              ),

              ///FilledButton
              FilledButton(
                style: FilledButton.styleFrom(
                  /// same to Elevated Button style follow
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {},
                child: const Text("FilledButton"),
              ),

              /// OutlinedButton
              OutlinedButton(
                onPressed: () {},
                child: const Text("OutlinedButton"),
              ),

              ////MaterialButton

              MaterialButton(
                onPressed: () {},
                child: const Text("MaterialButton"),
              ),

              ///BackButton
              BackButton(onPressed: () {}, color: Colors.deepOrange),

              ///CloseButton
              CloseButton(onPressed: () {}, color: Colors.orangeAccent),

              ///DrawerButton
              DrawerButton(onPressed: () {}, style: const ButtonStyle()),

              ///DropdownButton
              DropdownButton(
                items: const [],
                onChanged: (value) => 2,
              ),
            ])),
      ),
    );
  }
}
