import 'package:flutter/material.dart';
import '../author_card.dart';
class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: const Column(
          children: [
            AuthorCard(
              authorName: 'John Doe', 
              title: 'Pizza Artisan', 
              imageProvider: AssetImage('assets/me.jpg'),
              )
            //TODO: Add Positioned text
          ],
        ),
      ),
    );
  }
}
