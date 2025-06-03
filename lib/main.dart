import 'package:flutter/material.dart';
import 'package:hello_wordl/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.red),
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
    );
  }
}
