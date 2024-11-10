Here's an expanded version of your notes on the `Center` widget:

---

# Flutter

## 90. Center

The `Center` widget is used to center a child widget within its parent container. It’s simple but powerful, ensuring that content is aligned in the middle of the available space. This widget is useful for layouts where precise centering of elements is required, making it a popular choice for both text and graphical elements.

### Code Example

In the following code, the `Center` widget wraps around a `FlutterLogo` widget to center it within the screen:

```dart
body: const Center(
  child: FlutterLogo(
    size: 128,
    style: FlutterLogoStyle.stacked, // Stacks the "Flutter" text below the logo icon
    textColor: Colors.blue, // Sets the color of the "Flutter" text
    duration: Duration(milliseconds: 2000), // Duration for animation changes
    curve: Curves.easeInOut, // Smooth animation curve
  ),
),
```

### Explanation of Center

The `Center` widget takes one required property:

- **child**: The widget to be centered within its parent.

### Benefits of Using Center

- **Simplicity**: It provides an easy way to center any widget without complex layout structures.
- **Efficiency**: It helps avoid unnecessary alignment complexities by centering its child within available space, no matter the screen size or parent container.

### Example in the Scaffold

In a typical Flutter app structure, using `Center` inside the `Scaffold` body can position elements, like logos or messages, directly in the middle of the screen:

```dart
body: const Center(
  child: Text(
    'Centered Text',
    style: TextStyle(fontSize: 24),
  ),
),
```

### Support

For further information on using the `Center` widget:

- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44584953#overview)

### Related Code Files

- [main](main.dart): Main file where the `Center` widget is used.

---

This structure provides a clear explanation of the `Center` widget’s purpose and practical use in layouts, helping beginners understand its importance in Flutter.
