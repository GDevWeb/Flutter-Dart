/* // Importing the Flutter Material package to use built-in widgets and themes
import 'package:flutter/material.dart';

// Main function - the entry point of the application
void main() {
  runApp(const MyApp(title: 'Apprendre les widgets basiques')); // Runs the MyApp widget with a title
}

// Defining the MyApp widget, a stateless widget that doesn't hold any state
class MyApp extends StatelessWidget {
  final String title; // Title property to display in the app

  // Constructor for MyApp, requires a title parameter
  const MyApp({super.key, required this.title});

  // The build method creates the widget tree for MyApp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner in the top-right corner
      title: title, // Sets the app's title
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Base color scheme for the app
        useMaterial3: true, // Using Material 3 design
      ),
      darkTheme: ThemeData.dark(useMaterial3: false), // Optional dark theme setup
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // The main/home screen of the app
    );
  }
}

// Defining the MyHomePage widget, which also extends StatelessWidget
class MyHomePage extends StatelessWidget {
  final String title; // Title property for the app bar text

  const MyHomePage({super.key, required this.title});

  // The build method for MyHomePage, defining the UI structure
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Scaffold widget provides the basic layout structure for the app screen

      // AppBar at the top, displays the title
      appBar: AppBar(
        title: Text(title), // Title for the app bar
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface, // App bar background color
      ),

      // The main body content of the Scaffold
      body: const FlutterLogo(size: 350), // Displaying a large Flutter logo as the main content

      // Floating Action Button (FAB) - a circular button typically used for primary actions
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Empty action when the button is pressed
        child: const Icon(Icons.send), // Icon inside the FAB
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Centering the FAB horizontally

      // Drawer (side menu) - slides from the left when tapped
      drawer: const Drawer(), // A blank drawer; can be customized with content

      // End Drawer (another side menu) - slides from the right when tapped
      endDrawer: const Drawer(), // Another blank drawer; can be customized with content

      // BottomNavigationBar - navigation bar at the bottom of the screen
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "user"), // User tab
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"), // Home tab
        ],
      ),
    );
  }
}
 */

/* 
// Importing the Flutter Material package to use built-in widgets and themes
import 'package:flutter/material.dart';

// Main function - the entry point of the application
void main() {
  runApp(const MyApp(title: 'Apprendre les widgets basiques')); // Runs the MyApp widget with a title
}

// Defining the MyApp widget, a stateless widget that doesn't hold any state
class MyApp extends StatelessWidget {
  final String title; // Title property to display in the app

  // Constructor for MyApp, requires a title parameter
  const MyApp({super.key, required this.title});

  // The build method creates the widget tree for MyApp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner in the top-right corner
      title: title, // Sets the app's title
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Base color scheme for the app
        useMaterial3: true, // Using Material 3 design
      ),
      darkTheme: ThemeData.dark(useMaterial3: false), // Optional dark theme setup
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // The main/home screen of the app
    );
  }
}

// Defining the MyHomePage widget, which also extends StatelessWidget
class MyHomePage extends StatelessWidget {
  final String title; // Title property for the app bar text

  const MyHomePage({super.key, required this.title});

  // The build method for MyHomePage, defining the UI structure
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Scaffold widget provides the basic layout structure for the app screen

      // AppBar at the top, displays the title
      appBar: AppBar(
        title: Text(title), // Title for the app bar
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface, // App bar background color
      ),

      // The main body content of the Scaffold
      body: const FlutterLogo(size: 350), // Displaying a large Flutter logo as the main content

      // Floating Action Button (FAB) - a circular button typically used for primary actions
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Empty action when the button is pressed
        child: const Icon(Icons.send), // Icon inside the FAB
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Centering the FAB horizontally

      // Drawer (side menu) - slides from the left when tapped
      drawer: const Drawer(), // A blank drawer; can be customized with content

      // End Drawer (another side menu) - slides from the right when tapped
      endDrawer: const Drawer(), // Another blank drawer; can be customized with content

      // BottomNavigationBar - navigation bar at the bottom of the screen
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "user"), // User tab
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"), // Home tab
        ],
      ),
    );
  }
}

 */