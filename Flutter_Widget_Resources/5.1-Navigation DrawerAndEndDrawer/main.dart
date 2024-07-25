import 'package:flutter/material.dart';


import 'ProfilePage.dart';

main(){
  runApp(const MyApp()); // Application
}

final navigatorKey = GlobalKey<NavigatorState>();


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        key: navigatorKey,
        home:const DrawerAndEndDrawer());

  }
}


class DrawerAndEndDrawer extends StatefulWidget {
  const DrawerAndEndDrawer({super.key});

  @override
  State<DrawerAndEndDrawer> createState() => _DrawerAndEndDrawerState();
}

class _DrawerAndEndDrawerState extends State<DrawerAndEndDrawer> {
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
      appBar: AppBar(
        title: const Text('Flutter Multi Router'),
        elevation: 7,
        //leading: Icon(Icons.home),///if drawer use,no leaden use this section
        toolbarOpacity: 1,
        toolbarHeight: 100,
        titleSpacing: 5,
        //centerTitle: true,
        backgroundColor: Colors.deepOrange,
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
        ),
      ),

      ///Drawer create Start
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.deepOrange),
                  accountName: const Text("Hafiz Rahman Omar"),
                  accountEmail: const Text("hafiz@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://avatars.githubusercontent.com/u/80614973?s=96&v=4"),
                )),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                mySnackBar("Drawer Home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                //mySnackBar("Drawer Profile", context);
                navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const ProfilePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Phone"),
              onTap: () {
                mySnackBar("Drawer Phone", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                mySnackBar("Drawer Email", context);
              },
            ),
          ],
        ),
      ),

      ///Drawer create End
      ///endDrawer create Start
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.deepOrange),
                  accountName: const Text("Hafizur Rahman Omar"),
                  accountEmail: const Text("hafiz@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://avatars.githubusercontent.com/u/80614973?s=96&v=4"),
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                mySnackBar("Drawer Home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                mySnackBar("Drawer Profile", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Phone"),
              onTap: () {
                mySnackBar("Drawer Phone", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                mySnackBar("Drawer Email", context);
              },
            ),
          ],
        ),
      ),

      ///endDrawer create End
    );
  }
}


