# Flutter

## 110. Expanded

The `Expanded` widget in Flutter is used within a `Row`, `Column`, or `Flex` layout to make its child widget take up all available space along the main axis. It’s particularly useful when you want certain widgets to occupy flexible or proportional space relative to other widgets. The `Expanded` widget simplifies responsive layout design by allowing widgets to expand dynamically based on available space.

### Basic Usage of Expanded

The `Expanded` widget wraps around a child widget to make it take up the remaining available space in the layout. It should be used inside a `Row`, `Column`, or `Flex` widget, as `Expanded` relies on these widgets to manage space.

#### Code Example

In this example, `Expanded` is used to make two containers share the available horizontal space equally in a `Row`.

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
        appBar: AppBar(title: const Text('Expanded Example')),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: const Center(child: Text("Blue")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: const Center(child: Text("Green")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Expanded Properties

- **`child`**: The widget that will be expanded to take up the available space. The child widget could be any widget, such as `Container`, `Text`, `Image`, etc.
- **`flex`**: Defines how much of the available space this widget should take relative to other `Expanded` widgets. The default value is `1`.

#### Example with Flex Property

The `flex` property can be used to allocate more space to one `Expanded` widget relative to another. In the example below, the first container takes up twice the space of the second container:

```dart
Row(
  children: [
    Expanded(
      flex: 2, // Takes twice as much space as the second Expanded widget
      child: Container(
        color: Colors.blue,
        height: 100,
        child: const Center(child: Text("Blue")),
      ),
    ),
    Expanded(
      flex: 1, // Takes up the remaining space
      child: Container(
        color: Colors.green,
        height: 100,
        child: const Center(child: Text("Green")),
      ),
    ),
  ],
)
```

In this example:

- The first `Expanded` widget with `flex: 2` will take twice as much space as the second `Expanded` widget with `flex: 1`.

### Common Use Cases for Expanded

- **Flexible Layouts**: Allocate flexible space in a `Row` or `Column` so widgets resize according to screen width or height.
- **Responsive Design**: Make widgets fill available space dynamically, creating responsive layouts.
- **Proportional Spacing**: Use the `flex` property to control how much space each widget takes in proportion to others.

### Benefits of Using Expanded

- **Responsive Design**: `Expanded` makes it easy to create adaptable, responsive UIs that adjust to screen size.
- **Cleaner Code**: Instead of using manual widths or heights, `Expanded` lets you manage space automatically, reducing the need for calculations.
- **Proportional Layouts**: The `flex` property provides control over proportional space allocation, ideal for balanced layouts.

### Alternative: Flexible Widget

The `Flexible` widget is similar to `Expanded` but allows for more control. `Flexible` allows a widget to either expand or shrink based on available space while keeping its original size constraints. `Expanded` is essentially a `Flexible` widget with `flexFit: FlexFit.tight`.

```dart
Flexible(
  flex: 1,
  fit: FlexFit.loose, // Allows the child to be only as large as it needs to be
  child: Container(
    color: Colors.red,
    height: 100,
  ),
)
```

### Support

For more information on using `Expanded` and `Flexible`:

- [Flutter Documentation on Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html)
- [Flutter Documentation on Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975702#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Expanded` to create responsive layouts.

---

This guide provides an overview of the `Expanded` widget, explaining how it can be used to create flexible, responsive layouts in Flutter. It also shows how to control spacing using the `flex` property and compares `Expanded` with the `Flexible` widget for additional layout control.
