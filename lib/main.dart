import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yes No App",
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Appbar"))),
        body: Center(
          child: FilledButton(onPressed: () {}, child: const Text("Click me")),
        ),
      ),
    );
  }
}
