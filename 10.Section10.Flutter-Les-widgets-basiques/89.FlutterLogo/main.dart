/* import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: 'Apprendre les widgets basiques'));
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
      home: const MyHomePage(title: 'The basics widgets'),
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
        leading: const Icon(Icons.home),
        actions: const [Icon(Icons.person), Icon(Icons.access_time)],
        bottom: const PreferredSize(
            preferredSize: Size(24, 24), child: Text("Hello world")),
        title: Text(title),
        centerTitle: true,
        elevation: 8, //shadow effect
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: FlutterLogo(
        size: MediaQuery.of(context).size.width / 2,
        style: FlutterLogoStyle.horizontal,
        textColor: Colors.blue,
        duration: const Duration(milliseconds: 2000),
        curve: Curves.easeInOut,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.send),
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
 */