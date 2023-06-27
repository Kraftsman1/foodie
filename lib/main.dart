import 'package:flutter/material.dart';
import 'foodie_theme.dart';
import 'home.dart';

void main() {
  runApp(const Foodie());
}

class Foodie extends StatelessWidget {
  const Foodie({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FoodieTheme.dark();

    return MaterialApp(
      theme: theme,
      title: 'Foodie',
      home: const Home(),
    );
  }
}
