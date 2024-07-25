import 'package:flutter/material.dart';

class ExpandedPractice extends StatefulWidget {
  const ExpandedPractice({super.key, required String title});

  @override
  State<ExpandedPractice> createState() => _ExpandedPracticeState();
}

class _ExpandedPracticeState extends State<ExpandedPractice> {
  /// custom snack bar Create
  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  /// custom snack bar End
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///AppBar Start
      appBar: AppBar(
        title: const Text('Flutter Multi Router'),
        elevation: 7,
        //leading: Icon(Icons.home),///if drawer use,no leaden use this section
        toolbarOpacity: 1,
        toolbarHeight: 100,
        titleSpacing: 5,
        //centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Setting Option", context);
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("Share Option", context);
            },
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("Phone Option", context);
            },
            icon: const Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("Mail Option", context);
            },
            icon: const Icon(Icons.mail),
          ),
        ],
      ),

      ///AppBar End
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blueGrey,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.lightGreen,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.brown,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.amber,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: const Color(0xfff1eae9),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
