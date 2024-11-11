# Flutter

## 104. Column

The `Column` widget in Flutter is used to arrange its children widgets vertically. It is a fundamental layout widget for organizing content in a stacked manner, where each child appears one below the other. `Column` is highly flexible and provides properties for aligning, spacing, and expanding content vertically.

### Basic Usage of Column

The `Column` widget takes a list of widgets as its children and aligns them vertically from top to bottom. By default, the children are centered horizontally within the column.

#### Code Example

In this example, `Column` is used to display multiple `Text` widgets and a `CircleAvatar`, all arranged vertically:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Column Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers all children vertically
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start (left)
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person, size: 30, color: Colors.white),
              ),
              SizedBox(height: 20), // Adds vertical spacing between items
              Text("Name: John Doe", style: TextStyle(fontSize: 18)),
              Text("Email: john.doe@example.com", style: TextStyle(fontSize: 16)),
              Text("Phone: +1 234 567 890", style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Column Properties

- **`children`**: A list of widgets that will be arranged vertically within the column.
- **`mainAxisAlignment`**: Controls the vertical alignment of the children within the column.
  - Common values:
    - `MainAxisAlignment.start`: Aligns children at the top.
    - `MainAxisAlignment.center`: Centers children vertically.
    - `MainAxisAlignment.end`: Aligns children at the bottom.
    - `MainAxisAlignment.spaceBetween`: Distributes children with equal space between them.
    - `MainAxisAlignment.spaceEvenly`: Distributes children with equal space around them.
- **`crossAxisAlignment`**: Controls the horizontal alignment of children within the column.
  - Common values:
    - `CrossAxisAlignment.start`: Aligns children to the start (left) of the column.
    - `CrossAxisAlignment.center`: Centers children horizontally.
    - `CrossAxisAlignment.end`: Aligns children to the end (right) of the column.

#### Example Using MainAxisAlignment and CrossAxisAlignment

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround, // Evenly spaces children vertically
  crossAxisAlignment: CrossAxisAlignment.stretch, // Stretches children to the width of the column
  children: [
    Text("First Item"),
    Text("Second Item"),
    Text("Third Item"),
  ],
)
```

### Common Use Cases for Column

- **Vertical Layouts**: Organize content vertically, such as in a profile card, settings screen, or information section.
- **Form Inputs**: Stack form fields vertically to create user-friendly forms.
- **Button Stacks**: Arrange buttons or options in a vertical list.

### Benefits of Using Column

- **Flexible Layout**: Provides control over both vertical and horizontal alignment for a variety of layouts.
- **Ease of Use**: Stacking widgets vertically is simple and effective for creating structured layouts.
- **Custom Spacing**: Allows for precise spacing and alignment using `SizedBox`, `MainAxisAlignment`, and `CrossAxisAlignment`.

### Support

For more information on using `Column`:

- [Flutter Documentation on Column](https://api.flutter.dev/flutter/widgets/Column-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975696#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Column` for arranging widgets vertically.

---

This guide provides a comprehensive overview of `Column` in Flutter, explaining its properties, alignment options, and common use cases for building vertical layouts.
