import 'package:flutter/material.dart';
import 'foodie_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  });

  @override
  Widget build(BuildContext context) {
    //TODO: Replace return Container(...)
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FoodieTheme.lightTextTheme.displayMedium,
                  ),
                  Text(
                    title,
                    style: FoodieTheme.lightTextTheme.displaySmall,
                  )
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
            onPressed: () {
              const snackBar = SnackBar(
                content: Text(
                  'Favorite Pressed',
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
