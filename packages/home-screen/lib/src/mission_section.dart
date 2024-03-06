import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class MissionSection extends StatelessWidget {
  const MissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Our Mission, Vision & Core Values',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Wrap(
            children: [
              ItemCard(
                icon: Icons.directions,
                title: 'Our Mission',
                description:
                    'To provide sustainable solutions for a greener planet and empower businesses to minimize their environmental impact.',
              ),
              ItemCard(
                icon: Icons.visibility,
                title: 'Our Mission',
                description:
                    'To provide sustainable solutions for a greener planet and empower businesses to minimize their environmental impact.',
              ),
            ],
          ),
          Text(
            'Our Core Values',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 40),
          const Wrap(
            children: [
              ValueCard(
                title: 'Environmental Stewardship',
                icon: Icons.eco,
                color: Color(0xFF2ECC71),
              ),
              ValueCard(
                title: 'Innovation',
                icon: Icons.lightbulb_outline,
                color: Color(0xFF3498DB),
              ),
            ],
          ),
          const Wrap(
            children: [
              ValueCard(
                title: 'Integrity',
                icon: Icons.security,
                color: Color(0xFFF39C12),
              ),
              ValueCard(
                title: 'Collaboration',
                icon: Icons.people,
                color: Color(0xFF9B59B6),
              ),
              ValueCard(
                title: 'Excellence',
                icon: Icons.star,
                color: Color(0xFFE74C3C),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ValueCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const ValueCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
