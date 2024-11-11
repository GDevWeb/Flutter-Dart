# Flutter

## 109. Divider

The `Divider` widget in Flutter is used to create a thin, horizontal line between widgets, typically in lists or columns. It’s a simple way to separate content visually, making layouts clearer and more organized. `Divider` is often used in settings screens, menus, and lists to visually distinguish different sections.

### Basic Usage of Divider

The `Divider` widget is a straightforward widget that can be added between other widgets in a `Column` or `ListView` to create a separation line.

#### Code Example

In this example, `Divider` is used to separate items in a `Column` layout:

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
        appBar: AppBar(title: const Text('Divider Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Item 1"),
              Divider(), // Adds a line separator
              Text("Item 2"),
              Divider(), // Adds another line separator
              Text("Item 3"),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Divider Properties

- **`color`**: Specifies the color of the divider line. If not specified, the divider takes on a default color based on the theme.
- **`thickness`**: Defines the thickness (height) of the line in logical pixels.
- **`indent`**: Adds space (in logical pixels) to the leading edge (left side in LTR languages) of the divider.
- **`endIndent`**: Adds space (in logical pixels) to the trailing edge (right side in LTR languages) of the divider.

#### Example with Custom Divider Properties

Here’s an example of a `Divider` with custom properties:

```dart
Divider(
  color: Colors.blue,          // Custom color
  thickness: 2,                // 2 logical pixels thick
  indent: 20,                  // Adds 20 pixels of space before the divider
  endIndent: 20,               // Adds 20 pixels of space after the divider
)
```

### Common Use Cases for Divider

- **List Separators**: Separate items in a `ListView` or `Column`.
- **Section Dividers**: Break up different sections in settings screens or forms.
- **Menu Item Separation**: Distinguish menu items or options in a vertical layout.

### Benefits of Using Divider

- **Clear Visual Separation**: Adds visual separation between elements, making content easier to scan.
- **Customizable**: Adjust thickness, color, and indents to match your design.
- **Simple to Use**: Easily add between widgets without needing to manage padding or margin manually.

### Alternative: VerticalDivider

Flutter also provides a `VerticalDivider`, which is used to create a vertical line. It’s particularly useful in `Row` layouts.

#### Example of VerticalDivider

```dart
Row(
  children: [
    Icon(Icons.person),
    VerticalDivider(
      color: Colors.grey,
      thickness: 1,
      width: 20,
    ),
    Icon(Icons.home),
  ],
)
```

### Support

For more information on using `Divider` and `VerticalDivider`:

- [Flutter Documentation on Divider](https://api.flutter.dev/flutter/material/Divider-class.html)
- [Flutter Documentation on VerticalDivider](https://api.flutter.dev/flutter/material/VerticalDivider-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975714#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Divider` and `VerticalDivider` for separating content.

---

This guide provides an overview of the `Divider` widget, explaining how to use it to separate content, customize its appearance, and add visual clarity in Flutter layouts.
