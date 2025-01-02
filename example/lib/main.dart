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
      title: 'FlutterTabBarLite Examples',
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
        title: const Text('FlutterTabBarLite Examples'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          const SizedBox(height: 16),
          const Text(
            'Example 1: Scrollable Horizontal TabBar with Gradient',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          FlutterTabBarLite.horizontal(
            scrollable: true,
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
          const SizedBox(height: 32),
          const Text(
            'Example 2: Vertical TabBar ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          FlutterTabBarLite.vertical(
            itemMargin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
              colors: [Colors.purple, Colors.cyan],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            onTabChange: (index) {
              print("Selected Tab: $index");
            },
          ),
          const SizedBox(height: 32),
          const Text(
            'Example 3: Text with prefix Icon || Solid Background',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          FlutterTabBarLite.horizontal(
            titles: const ["Home", "Profile", "Settings"],
            prefixIcons: const [
              Icons.home_outlined,
              Icons.person_outline,
              Icons.settings_outlined,
            ],
            onTabChange: (index) {
              print("Selected Tab: $index");
            },
          ),
          const SizedBox(height: 32),
          const Text(
            'Example 4: Suffix Icon Custom Colors and Padding',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          FlutterTabBarLite.horizontal(
            titles: const ["Tab A", "Tab B", "Tab C"],
            selectedTextColor: Colors.white,
            unselectedItemTextColor: Colors.black87,
            selectedItemBgColor: Colors.cyan.shade700,
            unselectedItemBgColor: Colors.white,
            backgroundColor: Colors.orange.shade300,
            suffixIcons: const [
              Icons.home_outlined,
              Icons.person_outline,
              Icons.settings_outlined,
            ],
            itemPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            onTabChange: (index) {
              print("Selected Tab: $index");
            },
          ),
          const SizedBox(height: 32),
          const Text(
            'Example 5: Circular Tabs with Icon , AnimateSize: false',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          FlutterTabBarLite.horizontal(
            borderRadius: 32,
            itemBorderRadius: 32,
            gradient: const LinearGradient(
              colors: [Colors.indigo, Colors.pink],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            animateItemSize: false,
            suffixIcons: const [
              Icons.home_outlined,
              Icons.person_outline,
              Icons.settings_outlined,
            ],
            itemPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            onTabChange: (index) {
              print("Selected Tab: $index");
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
