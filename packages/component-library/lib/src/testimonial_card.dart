import 'package:component_library/src/flexible_card.dart';
import 'package:flutter/material.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({
    super.key,
    required this.name,
    required this.role,
    required this.testimonial,
    this.image,
  });

  final String name;
  final String role;
  final String testimonial;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FlexibleCard(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              isThreeLine: true,
              leading: CircleAvatar(
                backgroundImage: image,
              ),
              title: Text(name),
              subtitle: Text(role),
            ),
            Text(
              '"$testimonial"',
              style: textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
