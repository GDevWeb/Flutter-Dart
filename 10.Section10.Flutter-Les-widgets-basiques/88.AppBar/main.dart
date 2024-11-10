/* import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: 'Learn the basics widgets'));
}

// MyApp is a StatelessWidget that serves as the root of the application
class MyApp extends StatelessWidget {
  final String title; // Title property for the app
  
  const MyApp({super.key, required this.title});

  // The build method defines the widget tree for the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      title: title, // Sets the app title (not displayed in the UI)
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Sets a color theme
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: false), // Dark theme option
      home: const MyHomePage(title: 'The basics widgets'), // Main screen of the app
    );
  }
}

// MyHomePage widget, also Stateless, represents the main screen content
class MyHomePage extends StatelessWidget {
  final String title; // Title for the AppBar

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar, a typical top bar in a Material app, with various properties configured
      appBar: AppBar(
        leading: const Icon(Icons.home), // Icon on the left side (leading position), often used as a back button or logo
        actions: const [Icon(Icons.person), Icon(Icons.access_time)], // Icons on the right side (action buttons), e.g., user and clock icons
        bottom: const PreferredSize(
          // Widget displayed at the bottom of the AppBar (e.g., a subtitle or extra text)
          preferredSize: Size(24, 24), // Sets the preferred size of the widget
          child: Text("Hello world"), // Text displayed below the main AppBar title
        ),
        title: Text(title), // Main title text in the center of the AppBar
        centerTitle: true, // Centers the title text horizontally
        elevation: 8, // Adds shadow effect under the AppBar for depth
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface, // Background color from the theme
      ),
      
      // Main body content of the screen, with a large Flutter logo widget
      body: const FlutterLogo(size: 350),
      
      // Floating Action Button (FAB) for a primary action, positioned at the center bottom
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Action when button is pressed
        child: const Icon(Icons.send), // Icon inside the FAB
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Centers the FAB horizontally
      
      // Drawer menus for additional navigation or options, on both left and right sides
      drawer: const Drawer(), // Left side drawer
      endDrawer: const Drawer(), // Right side drawer
      
      // Bottom navigation bar with multiple items/icons
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "user"), // User icon/tab
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"), // Home icon/tab
        ],
      ),
    );
  }
}
 */