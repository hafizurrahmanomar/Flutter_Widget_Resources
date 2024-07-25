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
      body: SingleChildScrollView(
        child: Center(
          child: (Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// ElevatedButton
                const Text("ElevatedButton"),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
        
                    /// Button Background Color
                    foregroundColor: Colors.purple,
        
                    /// Button Text Color
                    minimumSize: const Size(400, 80),
        
                    /// width = 300 ,height=40,
                    maximumSize: const Size(400, 100),
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
                const SizedBox(
                  height: 15,
                ),
        
                /// TextButton
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
        
                      /// Same to ElevatedButton Style apply.
                      ),
                  child: const Text("TextButton"),
                ),
                const SizedBox(
                  height: 15,
                ),
                //// Icon Button
                const Text("Icon Button"),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                      // Same To Elevated Button Style
                      backgroundColor: Colors.orangeAccent),
                  icon: const Icon(Icons.account_circle),
                ),
                const SizedBox(
                  height: 15,
                ),
        
                ///FloatingActionButton with Label
                const Text("FloatingActionButton with Label"),
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
                const SizedBox(
                  height: 15,
                ),
        
                ///FloatingActionButton with child
                const Text("FloatingActionButton with child"),
                FloatingActionButton(
                  onPressed: () {},
                  //child: const Text("FloatingActionButton"),
                  child: const Icon(Icons.add_circle),
                ),
                const SizedBox(
                  height: 15,
                ),
        
                ///FilledButton
                const Text("FilledButton"),
                FilledButton(
                  style: FilledButton.styleFrom(
                    /// same to Elevated Button style follow
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text("FilledButton"),
                ),
                const SizedBox(
                  height: 15,
                ),
        
                /// OutlinedButton
                const Text("OutlinedButton"),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("OutlinedButton"),
                ),
                const SizedBox(
                  height: 15,
                ),
                ////MaterialButton
                const Text("MaterialButton"),
                MaterialButton(
                  onPressed: () {},
                  child: const Text("MaterialButton"),
                ),
                const SizedBox(
                  height: 15,
                ),
        
                ///BackButton
                const Text("BackButton"),
                BackButton(onPressed: () {}, color: Colors.deepOrange),
                const SizedBox(
                  height: 15,
                ),
        
                ///CloseButton
                const Text("CloseButton"),
                CloseButton(onPressed: () {}, color: Colors.orangeAccent),
                const SizedBox(
                  height: 15,
                ),
        
                ///DrawerButton
                const Text("DrawerButton"),
                DrawerButton(onPressed: () {}, style: const ButtonStyle()),
                const SizedBox(
                  height: 15,
                ),
        
                ///DropdownButton
                const Text("DropdownButton"),
                DropdownButton(
                  items: const [],
                  onChanged: (value) => 2,
                ),
              ])),
        ),
      ),
    );
  }
}
