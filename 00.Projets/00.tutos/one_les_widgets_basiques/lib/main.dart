import 'package:flutter/material.dart';

import "profile_card.dart";

void main() {
  runApp(const MyApp(title: 'Dart & Flutter '));
}

// Class qui hérite de stateless
class MyApp extends StatelessWidget {
  // Constructor :
  final String title;
  const MyApp({super.key, required this.title});

  // This widget is the root of your application.
  // Build visuel / painting - On retourne un widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug banner
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: false),
      home: const MyHomePage(title: 'Music App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Propriété de la classe Stateless
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(
          "Music APP",
          textAlign: TextAlign.center,
        ),
        actions: const [
          Icon(Icons.home),
          Icon(Icons.person),
        ],
        title: Text(title),
        centerTitle: true,
        elevation: 8, //shadow effect
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50), // Adjust as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Categories"),
                ProfileCard(
                    name: "Guitare",
                    email: "passion_guitare.com",
                    phone: "+330600000000",
                    imagePath: "assets/images/instruments/guitar.jpg"),
                ProfileCard(
                    name: "Piano",
                    email: "passion_piano.com",
                    phone: "+330600000000",
                    imagePath: "assets/images/instruments/piano.jpg"),
                ProfileCard(
                    name: "Saxo",
                    email: "passion_saxo.com",
                    phone: "+330600000000",
                    imagePath: "assets/images/instruments/saxo.jpg"),
                ProfileCard(
                    name: "Violin",
                    email: "passion_violin.com",
                    phone: "+330600000000",
                    imagePath: "assets/images/instruments/violin.jpg"),
                ProfileCard(
                    name: "gd@EVwEB",
                    email: "gd@EVwEB.com",
                    phone: "+330600000000",
                    imagePath: "assets/images/profiles/profile.png"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: const Drawer(), //side menu left to right
      endDrawer: const Drawer(), //side menu right to left
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "user"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home")
      ]),
    );
  }
}
