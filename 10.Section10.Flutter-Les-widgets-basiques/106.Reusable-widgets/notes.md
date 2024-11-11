# Flutter

## 106. Reusable Widgets

Reusable widgets allow you to break down your UI into independent components that can be easily configured and reused across different screens and contexts. Let’s look at an example to create a reusable `ProfileCard` widget and then use it within a layout.

### Steps to Create and Use a Reusable Widget

1. **Define a Reusable Widget Class**:

   - Create a custom widget by defining a new `StatelessWidget` or `StatefulWidget` class.
   - Add configurable properties for the widget so you can customize it when using it in different places.

2. **Use the Custom Widget in Your Layout**:
   - Once created, the custom widget can be used in any layout, just like a standard Flutter widget.

### Example: Creating a Reusable `ProfileCard` Widget

Let’s create a reusable `ProfileCard` widget that displays an avatar, name, email, and phone number. This widget can be customized each time you use it.

#### Step 1: Define the Reusable Widget

```dart
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String imagePath;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
              backgroundColor: Colors.blueGrey,
            ),
            const SizedBox(height: 10),
            Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(email, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 5),
            Text(phone, style: const TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
```

#### Explanation

- **Properties**: The `ProfileCard` widget takes `name`, `email`, `phone`, and `imagePath` as input parameters, allowing you to customize these values.
- **Design**: The widget uses a `Card` with padding and spacing to create a neatly organized profile card with an avatar and text.

#### Step 2: Use the Reusable Widget in Your Layout

Now you can use the `ProfileCard` widget within any other widget, such as a `Column` or `ListView`, and customize it with different values.

```dart
import 'package:flutter/material.dart';
import 'profile_card.dart'; // Import your reusable widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Reusable Widget Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ProfileCard(
                name: "GD@evWeb",
                email: "ilove_learning@gmail.com",
                phone: "+33 0600000000",
                imagePath: "assets/images/profile.png",
              ),
              ProfileCard(
                name: "John Doe",
                email: "johndoe@example.com",
                phone: "+1 234 567 890",
                imagePath: "assets/images/johndoe.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Advantages of Reusing Widgets

- **Modular Code**: Reusable widgets keep code organized and modular, making maintenance easier.
- **Consistency**: Consistent UI across different parts of the app, as styles and layout are defined once.
- **Scalability**: If the widget design needs to be updated, changes are applied across all instances, saving time and reducing errors.

### Tips for Creating Reusable Widgets

1. **Add Properties**: Make widgets customizable by adding properties that let you change content, colors, sizes, etc.
2. **Encapsulate Styling**: Keep the styling and layout within the widget, so each instance has a consistent look and feel.
3. **Use Composition**: Break down complex widgets into smaller reusable widgets, and then combine them as needed.

### Support

For more information on creating custom widgets:

- [Flutter Documentation on Creating Custom Widgets](https://flutter.dev/docs/development/ui/widgets)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975666#overview)

---

This guide helps you understand how to create and reuse custom widgets, providing a flexible, maintainable, and modular approach to building UI in Flutter.
