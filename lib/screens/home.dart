import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modeThemeProvider = Provider.of<ThemeModeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: modeThemeProvider.primaryColor,
      ),
      body: Container(
        color: modeThemeProvider.backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second-screen');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: modeThemeProvider.primaryColor,
            ),
            child: const Text('Second Screen'),
          ),
        ),
      ),
    );
  }
}
