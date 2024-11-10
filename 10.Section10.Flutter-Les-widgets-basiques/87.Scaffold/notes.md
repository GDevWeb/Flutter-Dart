# Flutter

## 87. Scaffold

The `Scaffold` widget is a core layout structure in Flutter, providing a visual framework for organizing an app’s main UI components. It includes built-in support for app bars, drawers, floating action buttons, bottom navigation bars, and more, making it ideal for quickly building standard layouts.

### Code Example

In this example, `Scaffold` is used to create a basic screen structure with an `AppBar`, a centered body content, and additional components like a `FloatingActionButton` and `BottomNavigationBar`.

```dart
body: Scaffold(
  appBar: AppBar(
    title: const Text("AppBar Title"),
    leading: const Icon(Icons.home), // Leading icon on the left side
    actions: const [Icon(Icons.search), Icon(Icons.more_vert)], // Action icons on the right
  ),
  body: const Center(
    child: Text("Main content here"), // Centered text within the body
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: const Icon(Icons.add), // Floating action button with an add icon
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Positions the FAB at the center bottom
  drawer: const Drawer(), // Drawer menu on the left side
  endDrawer: const Drawer(), // Drawer menu on the right side
  bottomNavigationBar: BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    ],
  ),
),
```

### Explanation of Scaffold Properties

- **`appBar`**: Adds a top bar to the screen, which can contain titles, icons, and action buttons. The `AppBar` widget itself is highly customizable for styling and navigation.
- **`body`**: The main content area of the `Scaffold`, typically containing most of the screen's UI. In this example, a `Center` widget is used to center a `Text` widget.
- **`floatingActionButton`**: A circular button often used for primary actions, like adding a new item. Positioned over the `body` and controlled by `floatingActionButtonLocation`.
- **`floatingActionButtonLocation`**: Controls the placement of the `FloatingActionButton`. Options include `centerFloat` (centered at the bottom), `endFloat` (right-aligned), and others.
- **`drawer`**: A slide-in menu on the left side, often used for navigation or settings. It appears when the user swipes from the left edge or taps the "hamburger" icon in the `AppBar`.
- **`endDrawer`**: A slide-in menu on the right side, which can serve additional functions similar to `drawer`.
- **`bottomNavigationBar`**: A bar at the bottom of the screen with icons and labels for navigating between main sections of the app.

### Benefits of Using Scaffold

- **Complete Layout Solution**: Combines essential UI elements into a single structure, reducing the need to position elements manually.
- **Built-in Support for Material Design**: Integrates Material Design principles, making it easy to achieve a consistent, polished look.
- **Efficient UI Management**: Allows placement of app elements like navigation bars, drawers, and floating buttons without extra code or customization.

### Support

For more information on using the `Scaffold` widget:

- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975654#overview)

### Related Code Files

- [main](main.dart): Main file demonstrating the usage of the `Scaffold` widget in building a structured app layout.

---
