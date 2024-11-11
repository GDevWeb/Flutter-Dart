# Flutter

## 105. Row

The `Row` widget in Flutter is used to arrange its children horizontally. Similar to the `Column` widget (which arranges children vertically), `Row` is essential for creating layouts that stack widgets side-by-side. `Row` provides properties to control alignment, spacing, and stretching of its children.

### Basic Usage of Row

The `Row` widget takes a list of widgets as its children and arranges them horizontally from left to right.

#### Code Example

In this example, `Row` is used to display icons and text labels side by side:

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
        appBar: AppBar(title: const Text('Row Example')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distributes space between each child
            crossAxisAlignment: CrossAxisAlignment.center, // Centers each child vertically
            children: const [
              Icon(Icons.home, size: 40, color: Colors.blue),
              Text("Home", style: TextStyle(fontSize: 20)),
              Icon(Icons.person, size: 40, color: Colors.green),
              Text("Profile", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Row Properties

- **`children`**: A list of widgets that will be arranged horizontally within the row.
- **`mainAxisAlignment`**: Controls the horizontal alignment of the children within the row.
  - Common values:
    - `MainAxisAlignment.start`: Aligns children to the start (left) of the row.
    - `MainAxisAlignment.center`: Centers children horizontally.
    - `MainAxisAlignment.end`: Aligns children to the end (right) of the row.
    - `MainAxisAlignment.spaceBetween`: Distributes children with equal space between them.
    - `MainAxisAlignment.spaceEvenly`: Distributes children with equal space around them.
    - `MainAxisAlignment.spaceAround`: Adds equal space around each child.
- **`crossAxisAlignment`**: Controls the vertical alignment of children within the row.
  - Common values:
    - `CrossAxisAlignment.start`: Aligns children to the top.
    - `CrossAxisAlignment.center`: Centers children vertically.
    - `CrossAxisAlignment.end`: Aligns children to the bottom.
    - `CrossAxisAlignment.stretch`: Stretches children vertically to match the height of the row.

#### Example Using MainAxisAlignment and CrossAxisAlignment

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround, // Space around each child
  crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the top
  children: [
    Text("Item 1", style: TextStyle(fontSize: 20)),
    Text("Item 2", style: TextStyle(fontSize: 20)),
    Text("Item 3", style: TextStyle(fontSize: 20)),
  ],
)
```

### Common Use Cases for Row

- **Horizontal Button Bars**: Display multiple buttons or icons side by side.
- **Horizontal Navigation Bars**: Create horizontal navigation with icons and labels.
- **Grouped Content**: Arrange content in groups, such as user profile information or settings.

### Limitations of Row

- **Horizontal Space**: If the children exceed the available horizontal space, a `Row` can cause an overflow error. Wrap the `Row` inside a `SingleChildScrollView` with horizontal scroll enabled to handle this case.

### Benefits of Using Row

- **Simple Horizontal Layout**: Easily stack widgets side by side.
- **Flexible Alignment**: Control horizontal and vertical alignment to create balanced layouts.
- **Responsive Spacing**: Distribute or space widgets evenly using alignment properties.

### Support

For more information on using `Row`:

- [Flutter Documentation on Row](https://api.flutter.dev/flutter/widgets/Row-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975698#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Row` for horizontal layouts.

---

This guide provides an overview of `Row`, explaining its properties, alignment options, and common use cases for building responsive horizontal layouts in Flutter.
