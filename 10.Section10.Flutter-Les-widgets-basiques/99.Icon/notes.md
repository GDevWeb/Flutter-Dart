# Flutter

## 99. Icon

The `Icon` widget in Flutter is used to display graphical icons, such as arrows, hearts, and other symbols. It’s commonly used in app bars, buttons, lists, and other UI elements. Flutter provides a large library of Material Icons, and you can also use custom icons by importing icon packs or assets.

### Basic Usage of Icon

The `Icon` widget requires an icon identifier (e.g., `Icons.add`) and can be customized with properties like `size` and `color`.

#### Code Example

In this example, the `Icon` widget is used to display a red heart icon with a larger size.

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
        appBar: AppBar(title: const Text('Icon Widget Example')),
        body: Center(
          child: Icon(
            Icons.favorite, // Icon type (heart icon)
            color: Colors.red, // Icon color
            size: 48, // Icon size in pixels
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Icon Properties

- **`icon`**: Identifies the icon to display, such as `Icons.add`, `Icons.home`, or `Icons.settings`. These icons are part of Flutter's built-in Material Icons library.
- **`color`**: Sets the color of the icon. You can use predefined colors from the `Colors` class or custom colors.
- **`size`**: Specifies the size of the icon in logical pixels. A larger size value increases the icon’s dimensions.

### Using IconButton for Clickable Icons

For interactive icons (e.g., icons that perform an action when clicked), use the `IconButton` widget. This widget combines an icon with an `onPressed` callback to handle user interaction.

#### Code Example with IconButton

```dart
IconButton(
  icon: const Icon(Icons.share), // Icon displayed in the button
  color: Colors.blue, // Icon color
  iconSize: 36, // Icon size
  onPressed: () {
    print("Share icon clicked!");
  }, // Action when the button is pressed
),
```

### Common Icon Options in Flutter

Flutter provides a wide selection of Material Icons, which are grouped into various categories:

- **Navigation**: `Icons.arrow_back`, `Icons.home`, `Icons.menu`
- **Actions**: `Icons.add`, `Icons.edit`, `Icons.delete`
- **Communication**: `Icons.phone`, `Icons.email`
- **Social**: `Icons.favorite`, `Icons.share`, `Icons.thumb_up`
- **Media**: `Icons.play_arrow`, `Icons.pause`, `Icons.volume_up`

You can view the full list of Material Icons in Flutter’s documentation or [Material Icons library](https://fonts.google.com/icons).

### Using Custom Icons

To use custom icons, you can import icon packs like `font_awesome_flutter` or add custom `.ttf` font files. Once added, use `IconData` with the `Icon` widget to display custom icons.

#### Code Example with Custom Icon Pack (FontAwesome)

1. Add the `font_awesome_flutter` package to `pubspec.yaml`:

   ```yaml
   dependencies:
     font_awesome_flutter: ^10.0.0
   ```

2. Import and use a custom icon:

   ```dart
   import 'package:font_awesome_flutter/font_awesome_flutter.dart';

   Icon(FontAwesomeIcons.twitter, color: Colors.blue, size: 48)
   ```

### Benefits of Using Icon

- **Visual Cues**: Icons provide clear visual cues, enhancing usability and helping users navigate the app more intuitively.
- **Customizable**: Easily change icon color, size, and style, and apply actions with `IconButton`.
- **Flexible Integration**: Works seamlessly in app bars, buttons, lists, and more, making icons highly versatile in Flutter layouts.

### Support

For more information on using the `Icon` widget:

- [Flutter Documentation on Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html)
- [Material Icons library](https://fonts.google.com/icons)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975676#overview)

### Related Code Files

- [main](main.dart): Main file demonstrating the usage of `Icon` and `IconButton` for static and clickable icons.

---

This overview should help beginners understand the `Icon` widget, its properties, and how to use both built-in and custom icons in Flutter applications.
