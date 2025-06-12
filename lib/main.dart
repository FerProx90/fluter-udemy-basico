import 'package:flutter/material.dart';
import 'package:hello_wordl/config/theme/app_theme.dart';
import 'package:hello_wordl/presentation/providers/discover_provider.dart';
import 'package:hello_wordl/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false, // Si quieres que inmediatamente quieres que se carge la instancia y la data
          create: (_) => DiscoverProvider()..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Toktik",
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
