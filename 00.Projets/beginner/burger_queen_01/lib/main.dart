import "package:flutter/material.dart";

void main() {
  runApp(const MyApp(title: "👑Burger Prince👑"));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.redAccent,
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () => print("Go To cart"),
                color: Colors.white,
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () => print("Go To myAccount"),
                color: Colors.white,
              ),
            ]),
        body: const Center(
          child: Text("👑Building Burger Prince👑 ..."),
        ),
      ),
    );
  }
}
