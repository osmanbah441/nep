import 'package:flutter/material.dart';
import 'flexible_card.dart';

class ItemCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? color;
  final String description;

  const ItemCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.description,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: FlexibleCard(
        color: color,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
