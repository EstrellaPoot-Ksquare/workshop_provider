import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';
import 'package:provider_class/screens/home.dart';
import 'package:provider_class/screens/second_screen.dart';

//HERE YOU WILL SETUP YOU MILTIPROVIDER FUNCTION
//DONT FORGET TO ADD YOUR PROVIDER CLASSES
void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModeProvider()),
      ],
      child: const MyApp(),
    )

        // const MyApp()
        );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/second-screen': (context) => const SecondScreen(),
      },
    );
  }
}
