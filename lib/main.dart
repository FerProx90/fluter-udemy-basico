import 'package:flutter/material.dart';
import 'package:hello_wordl/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yes No App",
      theme: AppTheme().theme(),
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Appbar"))),
        body: Center(
          child: FilledButton(onPressed: () {}, child: const Text("Click me")),
        ),
      ),
    );
  }
}
