/* // Importing the Flutter Material package to use built-in widgets and themes
import 'package:flutter/material.dart';

// Main function - the entry point of the application
void main() {
  runApp(const MyApp()); // Runs the MyApp widget as the root of the app
}

// Defining the MyApp widget, which is a stateless widget (immutable)
class MyApp extends StatelessWidget {
  // Constructor: calling the superclass constructor with a key
  const MyApp({super.key});

  // The build method creates the widget tree for this widget
  // This widget is the root of the application and returns a MaterialApp widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Removes the debug banner at the top right of the app
      title:
          'Apprendre les widgets basiques', // Title for the app (not displayed directly in the UI)

      // ThemeData sets the app’s theme - color scheme, typography, etc.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor:
                Colors.deepPurple), // Base color for the app's color scheme
        useMaterial3: true, // Use Material 3 design guidelines
      ),

      darkTheme:
          ThemeData.dark(useMaterial3: false), // Optional dark theme setup

      // The home property defines the default widget displayed on the home screen
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Defining MyHomePage widget, also stateless (doesn't hold any state)
class MyHomePage extends StatelessWidget {
  // Property for the title text displayed in the app bar
  final String title;

  // Constructor for MyHomePage, takes a required title parameter
  const MyHomePage({super.key, required this.title});

  // The build method for MyHomePage defines its UI structure
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides a structure with app bar, body, etc., typical for Material apps
      appBar: AppBar(
        title: const Text("Apprendre les widgets basiques"), // App bar title
        backgroundColor: Theme.of(context)
            .colorScheme
            .onInverseSurface, // App bar background color
      ),
    );
  }
}
 */

