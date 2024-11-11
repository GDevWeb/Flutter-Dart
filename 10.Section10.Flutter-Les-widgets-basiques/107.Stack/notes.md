# Flutter

## 107. Stack

The `Stack` widget in Flutter is used to overlay multiple widgets on top of each other. It’s similar to layers in design tools, where widgets can be positioned relative to each other in a stack. This widget is particularly useful for creating complex layouts, such as badges on profile images, overlapping elements, and other layered designs.

### Basic Usage of Stack

The `Stack` widget takes a list of children and displays them in the order they’re defined, with the first child at the bottom and each subsequent child stacked above it.

#### Code Example

In this example, `Stack` is used to place an icon on top of a profile picture.

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
        appBar: AppBar(title: const Text('Stack Example')),
        body: Center(
          child: Stack(
            alignment: Alignment.center, // Centers all children in the stack
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/profiles/profile.png"),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 24,
                  ),
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

### Explanation of Stack Properties

- **`children`**: A list of widgets that are layered in the stack. The first child is at the bottom, with each subsequent child layered on top.
- **`alignment`**: Aligns the children within the stack. Common values:
  - `Alignment.center`: Centers all children in the middle of the stack.
  - `Alignment.topLeft`, `Alignment.bottomRight`, etc., to position all children in a specific area.
- **`fit`**: Specifies how the Stack should size itself based on its children. Options include `StackFit.loose`, `StackFit.expand`, and `StackFit.passthrough`.
  - `StackFit.loose`: Allows the stack to take only as much space as needed.
  - `StackFit.expand`: Forces the stack to fill the available space.
  - `StackFit.passthrough`: Lets the Stack size itself based on its parent constraints.

#### Positioning Widgets with Positioned

The `Positioned` widget is used within a `Stack` to position widgets at specific locations. You can specify `top`, `bottom`, `left`, and `right` properties to control where the child is placed.

```dart
Stack(
  children: [
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Positioned(
      top: 10,
      right: 10,
      child: Icon(Icons.star, color: Colors.white),
    ),
  ],
)
```

### Common Use Cases for Stack

- **Profile Badges**: Overlay icons, like a checkmark, on profile images.
- **Floating Text or Icons**: Place text or icons on top of images or backgrounds.
- **Complex UI Layouts**: Create layered designs, such as cards with labels or badges.

### Benefits of Using Stack

- **Layered Design**: Stack provides control over widget layering, allowing you to create more visually dynamic UIs.
- **Flexible Positioning**: The `Positioned` widget enables precise control over where elements appear within the stack.
- **Responsive Layouts**: Works well with `Align`, `Positioned`, and other layout tools to create adaptable and responsive designs.

### Support

For more information on using `Stack`:

- [Flutter Documentation on Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975712#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Stack` with `Positioned` widgets.

---

This guide provides an overview of `Stack`, explaining how to use it for creating layered layouts, positioning elements with `Positioned`, and achieving complex designs in Flutter.
