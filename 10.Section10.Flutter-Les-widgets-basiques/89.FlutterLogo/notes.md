# Flutter

## 89. FlutterLogo

The `FlutterLogo` widget is a built-in widget that displays the Flutter logo. It’s a useful branding element in Flutter apps, providing options to customize the logo's appearance and animate it if needed.

### Code Example

In this example, the `FlutterLogo` widget is centered on the screen and styled with various properties to control its size, color, and animation:

```dart
body: const Center(
  child: FlutterLogo(
    size: 128, // Sets the logo size to 128 pixels
    style: FlutterLogoStyle.stacked, // Displays the logo with text stacked below the icon
    textColor: Colors.blue, // Sets the color of the "Flutter" text to blue
    duration: Duration(milliseconds: 2000), // Animation duration for property changes
    curve: Curves.easeInOut, // Smooth animation curve for transitions
  ),
),
```

### Explanation of FlutterLogo Properties

- **`size`**: Sets the size of the logo in pixels. Larger values increase the logo’s dimensions.
- **`style`**: Determines how the logo and text are displayed. Options include:
  - `FlutterLogoStyle.markOnly`: Displays only the logo icon without text.
  - `FlutterLogoStyle.horizontal`: Displays the logo icon with text to its right.
  - `FlutterLogoStyle.stacked`: Displays the logo icon with the "Flutter" text stacked underneath.
- **`textColor`**: Changes the color of the "Flutter" text. This is useful for adapting the logo to match the app's color theme.
- **`duration`**: Specifies the time (in milliseconds) for animations when properties like size or color change, allowing for a smooth visual effect.
- **`curve`**: Defines the animation curve, which controls the rate of change for animations. `Curves.easeInOut` provides a gentle acceleration and deceleration.

### Benefits of Using FlutterLogo

- **Brand Recognition**: Instantly adds the recognizable Flutter logo to the app, enhancing branding.
- **Flexible Customization**: Offers multiple display styles, color options, and animations, making it adaptable for various design needs.
- **Efficient Animation**: Built-in properties like `duration` and `curve` allow easy addition of animations, making the logo more engaging.

### Support

For more information on using the `FlutterLogo` widget:

- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44584943#overview)

### Related Code Files

- [main](main.dart): Main file where the `FlutterLogo` widget is demonstrated.

---

This should provide a comprehensive overview of the `FlutterLogo` widget, helping beginners understand its properties, benefits, and how to use it effectively in a Flutter application.
