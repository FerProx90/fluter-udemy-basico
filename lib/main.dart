import 'package:flutter/material.dart';
import 'package:hello_wordl/config/theme/app_theme.dart';
import 'package:hello_wordl/presentation/providers/chat_provider.dart';
import 'package:hello_wordl/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ChatProvider())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Yes No App",
        theme: AppTheme(selectedColor: 0).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
