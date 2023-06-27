import 'package:flutter/material.dart';
import '../foodie_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'John Doe';

  @override
  Widget build(BuildContext context) {
    return Center(
      //TODO: Card1 Decorate Container
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        //TODO: Add a stack of text
        child: Stack(
          children: [
            Text(
              category,
              style: FoodieTheme.darkTextTheme.bodyLarge,
            ),
            Positioned(
              top: 20,
              child: Text(
                title,
                style: FoodieTheme.darkTextTheme.titleLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FoodieTheme.darkTextTheme.bodyLarge,
              )
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: FoodieTheme.darkTextTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
