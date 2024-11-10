# Flutter

## 80. AppBar

The `AppBar` widget provides a top navigation bar in a Flutter app, commonly used for displaying titles, navigation icons, and quick action buttons. It is highly customizable, making it a staple in many app layouts.

### Code Example

In this example, the `AppBar` widget is used within a `Scaffold` to create a structured screen layout with a title, leading icon, and action icons:

```dart
appBar: AppBar(
  leading: const Icon(Icons.home), // Icon displayed on the left side of the AppBar
  actions: const [Icon(Icons.person), Icon(Icons.access_time)], // Action icons on the right side
  bottom: const PreferredSize(
    preferredSize: Size(24, 24),
    child: Text("Hello world"), // Additional text displayed at the bottom of the AppBar
  ),
  title: Text(title), // Main title displayed in the center of the AppBar
  centerTitle: true, // Centers the title horizontally
  elevation: 8, // Adds shadow under the AppBar for a layered effect
  backgroundColor: Theme.of(context).colorScheme.onInverseSurface, // AppBar background color
),
```

### Explanation of AppBar Properties

- **`leading`**: Displays an icon or widget on the left side, typically used for navigation icons.
- **`actions`**: A list of icons or buttons displayed on the right side, often for quick actions like profile or settings.
- **`bottom`**: Adds a widget below the main title, like additional text or tabs.
- **`title`**: The main title text displayed at the center or left, depending on the `centerTitle` property.
- **`centerTitle`**: Controls whether the title is centered.
- **`elevation`**: Adds shadow to create depth, enhancing the appearance of the AppBar.
- **`backgroundColor`**: Sets the background color of the AppBar.

### Benefits of Using AppBar

- **Structured Navigation**: Provides a consistent and accessible navigation bar.
- **Customizable**: Supports various properties for icons, title alignment, colors, and more, enabling flexibility in UI design.

### Support

For more on using the `AppBar` widget:

- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44584939#overview)

### Related Code Files

- [main](main.dart): Main file where the `AppBar` widget is used.

---

## 85. FlutterLogo

The `FlutterLogo` widget displays the Flutter logo and is useful for branding or demonstrating animations. It offers multiple styles and customization options.

### Code Example

The following code displays the `FlutterLogo` in a centered position with animations:

```dart
body: const Center(
  child: FlutterLogo(
    size: 128, // Sets the size of the logo
    style: FlutterLogoStyle.stacked, // Style of the logo, with text stacked below the logo icon
    textColor: Colors.blue, // Color of the "Flutter" text
    duration: Duration(milliseconds: 2000), // Duration for animation changes
    curve: Curves.easeInOut, // Smooth animation curve
  ),
),
```

### Explanation of FlutterLogo Properties

- **`size`**: Controls the size of the logo.
- **`style`**: Sets the logo style (e.g., `stacked`, `markOnly` for logo only, or `horizontal` with text to the right).
- **`textColor`**: Changes the color of the "Flutter" text.
- **`duration`**: Duration of animations when properties change, for a smooth effect.
- **`curve`**: Defines the animation curve, controlling the speed of the animation at various points.

### Benefits of Using FlutterLogo

- **Branding**: Quickly adds the Flutter brand logo in apps.
- **Customization**: Allows size, color, style, and animation adjustments for various use cases.

### Support

For more on using the `FlutterLogo` widget:

- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44584953#overview)

### Related Code Files

- [main](main.dart): Main file where the `FlutterLogo` widget is used.

---

This should give beginners a clear understanding of each widget's properties, usage, and benefits.
