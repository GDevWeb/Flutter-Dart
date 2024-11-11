# Flutter

## 114. Card

The `Card` widget in Flutter is used to create a container with rounded corners, shadow, and elevation, giving a simple and elegant way to display related information. It’s commonly used for organizing content in blocks, such as user profiles, settings, or product details.

### Basic Usage of Card

The `Card` widget wraps around a child widget, such as a `Column` or `ListTile`, to give it a distinctive card-like appearance. It includes properties for customizing elevation, shadow, and shape.

#### Code Example

In this example, `Card` is used to display a profile with text and an icon:

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
        appBar: AppBar(title: const Text('Card Example')),
        body: Center(
          child: Card(
            elevation: 4, // Shadow depth
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.person, size: 40, color: Colors.blue),
                  SizedBox(height: 8),
                  Text("John Doe", style: TextStyle(fontSize: 20)),
                  Text("johndoe@example.com", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Card Properties

- **`child`**: The widget inside the card, which can be any layout (e.g., `Column`, `Row`, `ListTile`, etc.).
- **`elevation`**: Controls the shadow depth of the card, adding a 3D effect. A higher elevation means a deeper shadow.
- **`shape`**: Defines the card’s shape, such as rounded corners. Commonly used with `RoundedRectangleBorder` for rounded corners.
- **`margin`**: Adds space around the card (by default, there’s 4 logical pixels of space around the card).

#### Example with Rounded Corners and Custom Color

```dart
Card(
  color: Colors.blue[50], // Background color
  elevation: 5,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20), // Rounded corners
  ),
  margin: const EdgeInsets.all(10),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text("Custom Card", style: TextStyle(fontSize: 18)),
        Text("This card has custom color, rounded corners, and elevation."),
      ],
    ),
  ),
)
```

### Common Use Cases for Card

- **User Profiles**: Display user information, like name and profile image, within a card layout.
- **Product or Item Details**: Showcase products, services, or items with a neat, organized appearance.
- **Settings or Options**: Arrange settings or options in card layouts to make sections distinct.
- **News or Articles**: Present snippets of articles, blog posts, or news items within individual cards.

### Benefits of Using Card

- **Visual Organization**: `Card` provides a visually appealing way to separate and organize content, making it easier for users to scan.
- **Flexible Customization**: Offers options for rounded corners, elevation, and shape, allowing you to tailor the appearance to match the design style.
- **Consistent UI Element**: The `Card` widget is widely recognized, creating a consistent and familiar look across different parts of an app.

### Tips for Using Card

1. **Use Padding and Margins**: Add padding inside the card for proper spacing, and margins around the card to separate it from other elements.
2. **Combine with ListTile**: `ListTile` is often used inside a `Card` to display items with leading icons, text, and trailing actions.
3. **Limit Elevation**: Avoid using high elevation values unless necessary, as this can make the UI look overly layered.

### Alternative: Container with BoxDecoration

If you need more advanced customization (e.g., gradient backgrounds, border styling), consider using a `Container` with `BoxDecoration` instead of `Card`.

```dart
Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        Text("Advanced Styling with Container"),
        Text("This is an alternative to using Card with more customization options."),
      ],
    ),
  ),
)
```

### Support

For more information on using `Card`:

- [Flutter Documentation on Card](https://api.flutter.dev/flutter/material/Card-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975686#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Card` to create visually separated content blocks.

---

This guide provides an overview of the `Card` widget, explaining how to use it to create visually organized layouts, customize its appearance, and apply it in various use cases like user profiles, settings, and product displays.
