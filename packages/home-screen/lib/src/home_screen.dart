import 'package:component_library/component_library.dart';

import 'package:flutter/material.dart';
import 'package:home_screen/src/home_screen_data.dart';
import 'package:home_screen/src/mission_section.dart';

import 'contact_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    this.onAboutUsPressed,
    this.onBlogPressed,
    this.onLogInPressed,
  }) : super(key: key);

  final VoidCallback? onAboutUsPressed;
  final VoidCallback? onBlogPressed;
  final VoidCallback? onLogInPressed;

  @override
  Widget build(BuildContext context) {
    return _HomeScreenView(
      onAboutUsPressed: onAboutUsPressed,
      onBlogPressed: onBlogPressed,
      onLogInPressed: onLogInPressed,
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView({
    required this.onAboutUsPressed,
    required this.onBlogPressed,
    required this.onLogInPressed,
  });

  final VoidCallback? onAboutUsPressed;
  final VoidCallback? onBlogPressed;
  final VoidCallback? onLogInPressed;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MediaQuery.of(context).size.width > 750
              ? 'Network of Environmental Professionals'
              : 'NEP',
          style: texttheme.titleLarge?.copyWith(color: colorTheme.primary),
        ),
        actions: [
          TextButton(
              onPressed: onAboutUsPressed, child: const Text('About us')),
          TextButton(onPressed: onBlogPressed, child: const Text('Blog')),
          TextButton(onPressed: onLogInPressed, child: const Text('Log In')),
        ],
      ),
      body: ListView(
        children: [
          const Logo(),
          const MissionSection(),
          WrapContentContainer(
            backgroundColor: colorTheme.primaryContainer,
            headingText: 'Our Servicess',
            children: HomeScreenData.services
                .map((e) => ItemCard(
                      icon: e.icon,
                      title: e.name,
                      description: e.description,
                    ))
                .toList(),
          ),
          WrapContentContainer(
              headingText: 'Our Team',
              children: HomeScreenData.teamMembers
                  .map((e) => ContentCard(
                      title: e.username,
                      subtitle: e.role!,
                      description: e.message!,
                      imageUrl: e.imageUrl))
                  .toList()),
          WrapContentContainer(
            backgroundColor: colorTheme.primaryContainer,
            headingText: 'Testimonials',
            children: HomeScreenData.testimonials
                .map((e) => TestimonialCard(
                      name: e.username,
                      role: e.role!,
                      testimonial: e.message!,
                    ))
                .toList(),
          ),
          WrapContentContainer(
            headingText: 'Blog Posts',
            children: HomeScreenData.blogPosts
                .map((e) => ContentCard(
                    title: e.title,
                    subtitle: e.subtitle,
                    description: e.description,
                    imageUrl: e.imageUrl))
                .toList(),
          ),
          const ContactSection(),
        ],
      ),
    );
  }
}
