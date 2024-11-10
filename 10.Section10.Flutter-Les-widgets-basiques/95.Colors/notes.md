# Flutter

## 95. Colors

In Flutter, colors are an essential part of building visually appealing and consistent apps. Flutter provides a built-in `Colors` class with predefined color constants and supports custom colors using the `Color` class. Colors can be applied to various widgets for backgrounds, text, borders, and more.

### Using Predefined Colors

Flutter’s `Colors` class provides a variety of predefined colors that are easy to use. Each color can also be accessed in different shades, ranging from light to dark.

#### Code Example

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
        appBar: AppBar(
          title: const Text('Color Example'),
          backgroundColor: Colors.blue[800], // Darker blue shade
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Primary Color",
                style: TextStyle(color: Colors.blue), // Basic color
              ),
              Text(
                "Accent Color",
                style: TextStyle(color: Colors.amberAccent), // Accent color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Custom Colors with Color Class

Flutter allows creating custom colors using the `Color` class and hexadecimal color codes. Hexadecimal color values follow the format `0xAARRGGBB`, where:

- **AA**: Alpha (transparency) component.
- **RR**: Red component.
- **GG**: Green component.
- **BB**: Blue component.

#### Code Example with Custom Colors

```dart
Container(
  color: const Color(0xFF42A5F5), // Custom color (blue shade)
  width: 100,
  height: 100,
  child: const Center(child: Text("Custom Color")),
),
```

### Opacity with Alpha Channel

The `Color` class supports opacity through the alpha channel. The alpha value ranges from `00` (fully transparent) to `FF` (fully opaque). Alternatively, you can use `.withOpacity(double opacity)` to set transparency on predefined colors.

#### Code Example with Opacity

```dart
Container(
  color: Colors.red.withOpacity(0.5), // 50% transparent red
  width: 100,
  height: 100,
  child: const Center(child: Text("Semi-transparent")),
),
```

### Material Color Swatches

Flutter’s Material Design includes color swatches like `Colors.blue`, `Colors.red`, etc., which contain multiple shades. You can access a specific shade by adding the desired shade number (e.g., `Colors.blue[300]` for a lighter shade).

| Shade     | Example            | Usage               |
| --------- | ------------------ | ------------------- |
| **[100]** | `Colors.blue[100]` | Lightest shade      |
| **[400]** | `Colors.blue[400]` | Regular color shade |
| **[700]** | `Colors.blue[700]` | Darker color shade  |
| **[900]** | `Colors.blue[900]` | Darkest shade       |

### Theme Colors

Using `ThemeData`, you can define global colors for the app’s primary, secondary, and background colors, allowing for consistency across widgets and screens.

#### Example with Theme Colors

```dart
MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.green, // Sets primary color for app bars, buttons, etc.
    accentColor: Colors.orangeAccent, // Accent color for highlights
    backgroundColor: Colors.white, // Background color for pages
  ),
);
```

### Benefits of Using Colors

- **Visual Appeal**: Adds vibrancy and enhances user experience.
- **Consistency**: Using `ThemeData` ensures consistent colors across the app.
- **Customization**: `Color` and opacity allow precise control over color appearance.

### Support

For more information on using colors in Flutter:

- [Flutter Documentation on Colors](https://api.flutter.dev/flutter/material/Colors-class.html)
- [Flutter Documentation on ThemeData](https://api.flutter.dev/flutter/material/ThemeData-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44585129#overview)

### Related Code Files

- [main](main.dart): Main file demonstrating the usage of colors in a Flutter app.

---

This note helps beginners understand color usage, predefined colors, custom colors, and themes in Flutter, making it easier to create visually cohesive and attractive UIs.
