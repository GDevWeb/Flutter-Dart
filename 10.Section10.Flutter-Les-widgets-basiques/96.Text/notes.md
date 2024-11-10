# Flutter

## 96. Text

The `Text` widget in Flutter is one of the most commonly used widgets for displaying text in an app. It provides a wide range of properties for styling and formatting, making it essential for creating labels, headers, paragraphs, and any other text content.

### Basic Usage of Text

The `Text` widget requires a string and allows customization through optional properties like `style`, `textAlign`, and `overflow`.

#### Code Example

In this example, a `Text` widget is used to display styled text centered on the screen:

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
        appBar: AppBar(title: const Text('Text Widget Example')),
        body: const Center(
          child: Text(
            "Hello, Flutter!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Text Properties

- **`style`**: A `TextStyle` object that defines the visual style of the text, including font size, color, weight, decoration, and more.
- **`textAlign`**: Sets the horizontal alignment of text within its container. Options include `TextAlign.left`, `TextAlign.center`, `TextAlign.right`, etc.
- **`overflow`**: Controls how the text should behave if it exceeds the available space. Options include:
  - `TextOverflow.clip`: Cuts off the text without an ellipsis.
  - `TextOverflow.ellipsis`: Displays an ellipsis (`...`) at the end of truncated text.
  - `TextOverflow.fade`: Gradually fades out the overflowed text.
- **`maxLines`**: Limits the number of lines for the text. If the text exceeds this limit, it will be truncated according to the overflow property.
- **`softWrap`**: Determines whether the text should break at soft line breaks (true) or continue on a single line (false).

### TextStyle Properties for Customizing Text

The `TextStyle` class provides several properties to style the text within a `Text` widget.

- **`fontSize`**: Controls the size of the text in logical pixels.
- **`color`**: Sets the color of the text.
- **`fontWeight`**: Defines the weight (thickness) of the text, with options like `FontWeight.bold`, `FontWeight.w300`, etc.
- **`fontStyle`**: Allows you to make text italicized with `FontStyle.italic`.
- **`decoration`**: Adds visual decoration to the text, such as underlining, striking through, or overlining. Use `TextDecoration` options like:
  - `TextDecoration.underline`
  - `TextDecoration.lineThrough`
  - `TextDecoration.overline`
- **`letterSpacing`**: Adjusts the spacing between letters in the text.
- **`wordSpacing`**: Adjusts the spacing between words.
- **`fontFamily`**: Sets a custom font family for the text.

#### Example Using TextStyle

```dart
Text(
  "Styled Text",
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.purple,
    decoration: TextDecoration.lineThrough,
    fontStyle: FontStyle.italic,
  ),
)
```

### Common Uses of Text

- **Labels and Descriptions**: Display short text like labels, captions, and brief descriptions.
- **Headings and Titles**: Customize font size, weight, and color to create headings and titles.
- **Content Text**: Use multi-line text for body content, articles, or paragraphs.

### Benefits of Using Text

- **Customizability**: Offers a range of styling options to create appealing and readable text.
- **Simplicity**: Easy to use for both simple and complex text layouts.
- **Responsive**: Works well with constraints like limited space, multiline, and alignment adjustments.

### Support

For more information on using the `Text` widget:

- [Flutter Documentation on Text](https://api.flutter.dev/flutter/widgets/Text-class.html)
- [Flutter Documentation on TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975670#overview)

### Related Code Files

- [main](main.dart): Main file demonstrating the usage of the `Text` widget with various properties.

---

This overview should help beginners understand the `Text` widget and how to use it effectively with `TextStyle` for text customization in Flutter layouts.
