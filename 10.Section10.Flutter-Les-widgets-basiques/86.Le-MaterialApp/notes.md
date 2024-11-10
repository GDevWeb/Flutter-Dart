# Flutter

## 86. MaterialApp

The `MaterialApp` widget is a top-level container for a Flutter app using Material Design. It sets up essential app-wide configurations like the theme, navigation, and routing, and is commonly the root widget in Flutter applications. This widget helps provide a consistent Material Design look and feel across the app.

### Code Example

In the following example, `MaterialApp` is used to define a Flutter app with theming, a title, and a home screen:

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner in the top right
      title: 'My Flutter App', // Sets the app's title, shown in task switcher on Android
      theme: ThemeData(
        primarySwatch: Colors.blue, // Main theme color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Creates a color scheme based on a seed color
        useMaterial3: true, // Enables Material Design 3, the latest design standard
      ),
      darkTheme: ThemeData.dark(), // Optional dark theme setting
      themeMode: ThemeMode.system, // Switches between light and dark themes based on system setting
      home: const MyHomePage(), // Sets the default widget (home screen) to display
    );
  }
}
```

### Explanation of MaterialApp Properties

- **`debugShowCheckedModeBanner`**: Controls whether the debug banner ("DEBUG") appears in the top right of the app during development. Setting this to `false` hides it.
- **`title`**: Sets the app’s title, which appears in the task manager or app switcher on Android devices.
- **`theme`**: Defines the main theme for the app, including primary colors, typography, and other styling aspects. `ThemeData` can be used to customize colors, button styles, fonts, and more.
- **`darkTheme`**: Defines an alternative theme used when the app is in dark mode. When `themeMode` is set to `ThemeMode.system`, this theme will automatically be used if the device is in dark mode.
- **`themeMode`**: Controls whether the app uses `theme`, `darkTheme`, or switches automatically based on the system setting. Options are:
  - `ThemeMode.light`: Uses the light theme only.
  - `ThemeMode.dark`: Uses the dark theme only.
  - `ThemeMode.system`: Switches between `theme` and `darkTheme` based on the device’s theme setting.
- **`home`**: Sets the default screen (home screen) of the app, typically a `Scaffold` widget. This screen is displayed when the app starts.

### Benefits of Using MaterialApp

- **Consistent UI**: Provides a cohesive Material Design look across the app with minimal setup.
- **Theme Management**: Enables easy management of light and dark themes for the entire app, enhancing user experience.
- **Routing and Navigation**: Integrates navigation features for handling routes, making it simpler to navigate between screens.

### Support

For more information on using the `MaterialApp` widget:

- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44584873#overview)

### Related Code Files

- [main](main.dart): Main file demonstrating the usage of `MaterialApp` as the root widget.

---

This summary should help beginners understand the purpose of `MaterialApp` and how to configure it for a Flutter app with Material Design.
