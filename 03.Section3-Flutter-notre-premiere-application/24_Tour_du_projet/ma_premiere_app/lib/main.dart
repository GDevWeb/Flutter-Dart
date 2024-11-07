import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Sandbox',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(248, 0, 162, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter SandBox'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/Dash+Dart+PNG++-+white.png"),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "Bienvenue $name",
                      style: Theme.of(context).textTheme.headlineMedium,
                    )),
                TextField(
                  onSubmitted: (newValue) {
                    setState(() {
                      name = newValue;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Nom du développeur"),
                      hintText: "Entrez votre nom"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
