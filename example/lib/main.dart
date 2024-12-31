import 'package:flutter/material.dart';
import 'package:flutter_tabbar_lite/flutter_tabbar_lite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter TabBar Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabBarExamplesPage(),
    );
  }
}

class TabBarExamplesPage extends StatelessWidget {
  const TabBarExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter TabBar Examples'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [

          const SizedBox(height: 20),

          // Example 2: Scrollable TabBar with Gradient
          const Text(
            'Example 1: Scrollable TabBar with Gradient',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          FlutterTabBarLite(
            enableScroll: true,
            titles: const [
              "Home",
              "Profile",
              "Settings",
              "More",
              "Help",
              "About",
              "Contact"
            ],
            gradient: const LinearGradient(
              colors: [Colors.teal, Colors.green],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            onTabChange: (index) {
              print("Scrollable TabBar - Selected Tab: $index");
            },
          ),
          const SizedBox(height: 20),

          // Example 3: TabBar with Icons
          const Text(
            'Example 2: TabBar with Icons',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          FlutterTabBarLite(
            titles: const ["Home", "Profile", "Settings"],
            prefixIcons: const [
              Icons.home_outlined,
              Icons.person_outline,
              Icons.settings_outlined,
            ],
            onTabChange: (index) {
              print("TabBar with Icons - Selected Tab: $index");
            },
          ),
          const SizedBox(height: 20),

          // Example 4: Custom Colors and Padding
          const Text(
            'Example 3: Custom Colors and Padding',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          FlutterTabBarLite(
            titles: const ["Tab A", "Tab B", "Tab C"],
            selectedTextColor: Colors.blue,
            unselectedItemTextColor: Colors.black87,
            selectedItemBgColor: Colors.yellow,
            unselectedItemBgColor: Colors.cyan,
            itemPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            onTabChange: (index) {
              print("Custom Colors - Selected Tab: $index");
            },
          ),
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
