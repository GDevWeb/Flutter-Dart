import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: 'Dart & Flutter '));
}

// Class qui hérite de stateless
class MyApp extends StatelessWidget {
  // Constructor :
  final String title;
  const MyApp({super.key, required this.title}); //

  // This widget is the root of your application.
  // Build visuel / painting - On retourne un widget
  @override //
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug banner
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: false),
      home: const MyHomePage(title: 'Flutter 1st App'),
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
          "SandBox App",
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
        child: Image.asset(
          "assets/images/guitar.jpg",
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.width,
          fit: BoxFit.contain,
          alignment: Alignment.center,
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
