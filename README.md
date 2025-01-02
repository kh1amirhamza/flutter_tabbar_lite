


# FlutterTabBarLite


A fully customizable and animated tab bar widget for Flutter applications. Designed to make navigation intuitive and visually appealing, this package is perfect for creating modern and dynamic tab interfaces.


<img src="assets/flutter_tabbar_lite.gif" width="336" style="height: auto;" alt="Demo">
![Demo](assets/flutter_tabbar_lite.gif)



## Features

- **Customizable Titles**: Add unique titles to each tab.
- **Icon Support**: Include prefix and suffix icons for enhanced aesthetics.
- **Scrollable & Fixed Layouts**: Choose between scrollable and fixed tab bar layouts.
- **Gradient Backgrounds**: Apply gradients for a modern look.
- **Responsive Design**: Fully responsive for various screen sizes.
- **Tab Change Callback**: Get notified when the user switches tabs.
- **Tab Axis Horizontal & Vertical**: Horizontal and Vertical Tabs.



## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_tabbar_lite: ^0.0.2
```

Run the command to fetch the package:

```bash
flutter pub get
```

---

## Usage

### FlutterTabBarLite Horizontal Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/flutter_tabbar_lite.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("FlutterTabBarLite Horizontal Example")),
        body: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
```

### Flutter TabBarLite Vertical Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/flutter_tabbar_lite.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("FlutterTabBarLite Vertical Example")),
        body: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
```



## Properties

| Property                  | Type                   | Default Value           | Description                                                  |
|---------------------------|------------------------|-------------------------|--------------------------------------------------------------|
| `scrollable`              | `bool`                 | `false`                 | Enables horizontal scrolling for tabs.                       |
| `titles`                  | `List<String>`         | `["Tab 1", "Tab 2"]`    | Titles for each tab.                                         |
| `prefixIcons`             | `List<IconData>?`      | `null`                  | Icons before titles.                                         |
| `suffixIcons`             | `List<IconData>?`      | `null`                  | Icons after titles.                                          |
| `backgroundColor`         | `Color?`               | `Colors.blue`           | Tab bar background color.                                    |
| `selectedTextColor`       | `Color`                | `Colors.black87`        | Color for the selected tab's text.                           |
| `unselectedItemTextColor` | `Color`                | `Colors.white`          | Color for unselected tab's text.                             |
| `gradient`                | `LinearGradient?`      | `null`                  | Gradient applied to the tab bar.                             |
| `onTabChange`             | `Function(int)?`       | `null`                  | Callback function invoked on tab change.                     |





---

## Contributions

Contributions are welcome! Please fork the repository, make your changes, and submit a pull request. Refer to the `CONTRIBUTING.md` for more details.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Author

Developed with ❤️ by **Khandakar Amir Hamza**  
[GitHub Profile](https://github.com/kh1amirhamza) | [Portfolio](https://amir-hamza.com)

---

## Example App

Check the `example` directory for a fully functional implementation. Run it locally using:

```bash
cd example
flutter run
```

---

## Feedback

If you encounter any issues or have suggestions, feel free to create an issue in the [GitHub repository](https://github.com/kh1amirhamza/flutter_tabbar_lite).
