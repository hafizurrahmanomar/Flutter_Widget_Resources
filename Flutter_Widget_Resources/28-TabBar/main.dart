import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.purple),
      home: const TabBarPage(),
    );
  }
}

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState
    extends State<TabBarPage> /*with SingleTickerProviderStateMixin*/ {
  // late final TabController _tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Facebook'),
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
                borderSide: const BorderSide(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(2),
                insets: const EdgeInsets.symmetric(horizontal: 80)),
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            indicatorWeight: 3,
            tabs: const [
              Tab(
                icon: Icon(Icons.feed),
                text: 'Feed',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //BottomNavigationBarPage(),
            Center(child: Text('Feed')),
            Center(child: Text('Profile')),
            Center(child: Text('Search')),
          ],
        ),
      ),
    );
  }
}
