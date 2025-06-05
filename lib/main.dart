import 'package:flutter/material.dart';
import 'package:hello_wordl/config/theme/app_theme.dart';
import 'package:hello_wordl/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yes No App",
      theme: AppTheme().theme(),
      home: const ChatScreen(),
    );
  }
}
