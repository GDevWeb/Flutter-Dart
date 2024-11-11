# Flutter

## 112. Wrap

The `Wrap` widget in Flutter is used to display multiple child widgets in a horizontal or vertical layout, automatically wrapping them to a new line or column when there’s not enough space. Unlike `Row` and `Column`, which only arrange widgets in a single line or column, `Wrap` adjusts dynamically, making it ideal for responsive layouts, grids, and flexible lists of items.

### Basic Usage of Wrap

The `Wrap` widget is often used for layouts where items need to wrap onto new lines, like tags, buttons, or small cards. It’s especially helpful for responsive designs where items need to adapt to varying screen sizes.

#### Code Example

In this example, `Wrap` is used to display a series of colored boxes that automatically wrap onto new lines if there isn’t enough horizontal space.

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
        appBar: AppBar(title: const Text('Wrap Example')),
        body: Center(
          child: Wrap(
            spacing: 8.0, // Space between items horizontally
            runSpacing: 8.0, // Space between items vertically
            children: List.generate(10, (index) {
              return Container(
                width: 80,
                height: 80,
                color: Colors.blue[(index + 1) * 100],
                child: Center(child: Text('Item $index')),
              );
            }),
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Wrap Properties

- **`direction`**: Determines the main axis direction of the `Wrap`. By default, it’s `Axis.horizontal`, so items are arranged in a horizontal row that wraps onto new rows as needed. If set to `Axis.vertical`, items will be arranged in a vertical column that wraps onto new columns.
- **`spacing`**: Specifies the horizontal space (in logical pixels) between items in the `Wrap`.

- **`runSpacing`**: Specifies the vertical space between rows (or columns, if `direction` is `Axis.vertical`) in the `Wrap`.

- **`alignment`**: Controls how items are aligned in the main axis (horizontal alignment in a horizontal `Wrap`).

- **`runAlignment`**: Controls how lines or columns are aligned in the cross axis.

- **`crossAxisAlignment`**: Defines how children should be aligned within each run in the cross axis.

#### Example with Different Properties

Here’s an example of `Wrap` with custom `spacing`, `runSpacing`, and alignment properties:

```dart
Wrap(
  spacing: 10.0,             // Horizontal space between items
  runSpacing: 10.0,          // Vertical space between lines
  alignment: WrapAlignment.center, // Center-aligns items horizontally
  runAlignment: WrapAlignment.start, // Aligns lines to the start (top)
  children: [
    Container(color: Colors.red, width: 100, height: 50),
    Container(color: Colors.blue, width: 100, height: 50),
    Container(color: Colors.green, width: 100, height: 50),
    Container(color: Colors.orange, width: 100, height: 50),
    Container(color: Colors.purple, width: 100, height: 50),
  ],
)
```

### Common Use Cases for Wrap

- **Tag Lists**: Displaying tags, badges, or keywords that need to wrap onto new lines.
- **Photo Grids**: Arranging images or icons in a responsive grid.
- **Responsive Buttons**: Creating button groups that adjust to screen size by wrapping onto new rows or columns.
- **Flexible Lists**: Any list of items that might vary in number and need to adapt to the available screen space.

### Benefits of Using Wrap

- **Responsive Layouts**: `Wrap` dynamically adjusts to fit available space, making it ideal for creating responsive layouts.
- **Efficient Space Management**: Avoids overflow errors by wrapping items to new lines or columns as needed.
- **Flexible Alignment**: `Wrap` provides fine-grained control over spacing, alignment, and layout behavior, which is useful for complex, adaptable designs.

### Alternative: Flexible and Expanded Widgets

While `Wrap` is useful for creating responsive, multi-line layouts, the `Flexible` and `Expanded` widgets are often used within `Row` or `Column` layouts for flexible, single-line layouts. They don’t wrap but allow widgets to take up flexible or proportional space.

### Support

For more information on using `Wrap`:

- [Flutter Documentation on Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44585873#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Wrap` to create flexible, responsive layouts.

---

This guide provides an overview of the `Wrap` widget, showing how it can be used to arrange items in a responsive layout that automatically wraps to new lines or columns. It also explains how to customize `Wrap` properties to control spacing, alignment, and direction.
