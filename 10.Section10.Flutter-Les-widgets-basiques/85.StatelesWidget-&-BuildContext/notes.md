# Flutter

## 85. StatelessWidget and BuildContext

### StatelessWidget

The `StatelessWidget` is a type of widget in Flutter that is immutable, meaning it cannot change its state after it is built. It is ideal for UI elements that do not need to update dynamically (e.g., text labels, icons, or simple static layouts). When building Flutter apps, `StatelessWidget` is often used as a base for widgets that rely on external data but don’t manage their own internal state.

#### Code Example

Here is a simple example of a `StatelessWidget` that displays a text title:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: 'My Stateless App'));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  // The build method is called once, and the widget does not change
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: const Center(child: Text("Hello, Flutter!")),
      ),
    );
  }
}
```

#### Explanation of StatelessWidget Properties

- **Immutable**: `StatelessWidget` does not have a `setState` method because it cannot change its internal data after it is created.
- **Performance**: Since the widget does not change, it only needs to be built once, making it efficient for static content.
- **Best for Static Data**: Useful for displaying data passed from parent widgets or constants that do not change during the app's runtime.

#### Common Uses

- **Text labels** and **icons** that don’t need to update.
- **Simple layouts** with static data.
- **Containers** with fixed properties.

### BuildContext

`BuildContext` is an object in Flutter that provides access to the location of a widget within the widget tree. It allows widgets to interact with their environment, access theme data, and find ancestor widgets. Every widget in Flutter has its own `BuildContext`, which is passed as a parameter to the `build` method.

#### Key Uses of BuildContext

- **Accessing Theme and MediaQuery**: Using `BuildContext`, widgets can retrieve theme settings, screen size, and other properties.
- **Navigation**: It is commonly used to navigate to different screens with `Navigator`.
- **Finding Ancestors**: Allows widgets to find other widgets in the tree, which is helpful for obtaining inherited widgets or provider values.

#### Code Example

In this example, `BuildContext` is used to access the theme's color scheme and apply it to the app bar.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: 'Using BuildContext'));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Theme.of(context).colorScheme.primary, // Access theme color
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            child: const Text("Go to Second Page"),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: const Center(child: Text("Welcome to the second page!")),
    );
  }
}
```

### Explanation of BuildContext Usage

- **Theme Access**: `Theme.of(context)` uses `BuildContext` to access the app's theme data and apply colors dynamically.
- **Navigation**: `Navigator.push(context, ...)` uses `BuildContext` to navigate from one screen to another within the app.
- **Widget Hierarchy**: `BuildContext` allows widgets to locate and communicate with other widgets in the widget tree, enhancing modularity and reusability.

### Benefits of Using StatelessWidget and BuildContext

- **Efficiency**: `StatelessWidget` is optimized for static content, ensuring smooth performance.
- **Environmental Awareness**: `BuildContext` makes it easy to access theme settings, navigation, and other resources within a widget’s environment.
- **Separation of Concerns**: `StatelessWidget` and `BuildContext` enable clear organization and separation, as `StatelessWidget` focuses on structure while `BuildContext` handles environment interactions.

### Support

For more information on using `StatelessWidget` and `BuildContext`:

- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975652#overview)

### Related Code Files

- [main](main.dart): Main file demonstrating `StatelessWidget` and `BuildContext`.

---

This overview should help beginners understand the purpose of `StatelessWidget` and `BuildContext`, their properties, and how to use them effectively in a Flutter app.
