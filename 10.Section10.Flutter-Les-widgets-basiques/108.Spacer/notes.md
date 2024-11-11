# Flutter

## 108. Spacer

The `Spacer` widget in Flutter is used to create flexible, empty space between widgets in a `Row`, `Column`, or `Flex` layout. It’s a convenient way to add spacing between elements without manually specifying exact dimensions. `Spacer` automatically fills available space, helping you create responsive layouts.

### Basic Usage of Spacer

The `Spacer` widget is typically used inside a `Row` or `Column` to add space between widgets. By default, it takes up as much space as possible, pushing adjacent widgets apart.

#### Code Example

In this example, `Spacer` is used to create equal spacing between two `Text` widgets in a `Row`:

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
        appBar: AppBar(title: const Text('Spacer Example')),
        body: Center(
          child: Row(
            children: const [
              Text("Start"),
              Spacer(), // Adds flexible space between "Start" and "End"
              Text("End"),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Spacer Properties

- **`flex`**: Defines how much space the `Spacer` should take relative to other `Spacer` widgets. By default, `flex` is set to 1. If you have multiple `Spacer` widgets, you can set different `flex` values to control how they divide the available space.

#### Example with Multiple Spacers and Flex

Using `flex` to create custom spacing between widgets:

```dart
Row(
  children: [
    Icon(Icons.star),
    Spacer(flex: 2), // Takes twice as much space as the second Spacer
    Icon(Icons.favorite),
    Spacer(flex: 1), // Takes half as much space as the first Spacer
    Icon(Icons.home),
  ],
)
```

In this example:

- The first `Spacer` with `flex: 2` will take twice the space of the second `Spacer` with `flex: 1`.
- This allows for more control over spacing distribution within the `Row`.

### Common Use Cases for Spacer

- **Align Elements**: Push widgets to the edges or center by placing `Spacer` widgets between them.
- **Equal Spacing**: Use multiple `Spacer` widgets to divide space evenly between elements.
- **Responsive Layouts**: Helps create adaptable layouts without needing to specify exact spacing values.

### Benefits of Using Spacer

- **Flexible Layouts**: `Spacer` automatically adjusts based on the available space, making it ideal for responsive designs.
- **Cleaner Code**: Reduces the need for multiple `SizedBox` or padding widgets for simple spacing requirements.
- **Easy Customization**: Using the `flex` property, you can fine-tune the space distribution among elements.

### Support

For more information on using `Spacer`:

- [Flutter Documentation on Spacer](https://api.flutter.dev/flutter/widgets/Spacer-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975718#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Spacer` to create flexible layouts.

---

This guide provides an overview of `Spacer`, showing how it can be used to control spacing in `Row` and `Column` layouts, making it an essential tool for building responsive UIs in Flutter.
