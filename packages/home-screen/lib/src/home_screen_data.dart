// note this is just for me to remove the hard-cored data from the
// ui.

import 'package:flutter/material.dart';

final class HomeScreenData {
  static const blogPosts = [
    Blog(
      title: 'The Importance of Biodiversity',
      subtitle: 'January 15, 2024',
      description:
          'Explore the significance of biodiversity and its impact on ecosystems.',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1661475877403-ce2e772fea2e?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder URL
    ),
    Blog(
      title: 'Sustainable Energy Solutions',
      subtitle: 'February 3, 2024',
      description:
          'Learn about innovative solutions for renewable energy and sustainability.',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1661475877403-ce2e772fea2e?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder URL
    ),
    Blog(
      title: 'Reducing Plastic Pollution',
      subtitle: 'March 10, 2024',
      description:
          'Discover effective strategies to reduce plastic waste and protect the environment.',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1661475877403-ce2e772fea2e?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder URL
    ),
  ];

  static const teamMembers = [
    User(
      username: 'John Doe',
      role: 'Environmental Scientist',
      message:
          'Passionate about protecting the environment and promoting sustainability.',
      imageUrl:
          'https://images.unsplash.com/photo-1504593811423-6dd665756598?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder URL
    ),
    User(
      username: 'Jane Smith',
      role: 'Ecological Consultant',
      message: 'Dedicated to preserving biodiversity and restoring ecosystems.',
      imageUrl:
          'https://images.unsplash.com/photo-1504593811423-6dd665756598?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder URL
    ),
    User(
      username: 'Michael Johnson',
      role: 'Climate Change Analyst',
      message:
          'Specializing in climate data analysis and mitigation strategies.',
      imageUrl:
          'https://images.unsplash.com/photo-1504593811423-6dd665756598?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder URL
    ),
    User(
      username: 'Emily Brown',
      role: 'Sustainability Consultant',
      message:
          'Committed to helping businesses integrate sustainable practices.',
      imageUrl:
          'https://images.unsplash.com/photo-1504593811423-6dd665756598?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Placeholder URL
    ),
  ];

  static const testimonials = [
    User(
      username: 'John Doe',
      role: 'CEO, EcoTech Inc.',
      message:
          'Green Earth Consultancy provided us with invaluable insights and strategies to reduce our carbon footprint while improving our bottom line. Highly recommend!',
      imageUrl: '',
    ),
    User(
      username: 'Jane Smith',
      role: 'Director, Nature Alliance',
      message:
          'Working with Green Earth Consultancy was a game-changer for our organization. Their expertise and dedication to sustainability are unmatched.',
      imageUrl: '',
    ),
    User(
      username: 'John Doe',
      role: 'CEO, EcoTech Inc.',
      message:
          'Green Earth Consultancy provided us with invaluable insights and strategies to reduce our carbon footprint while improving our bottom line. Highly recommend!',
      imageUrl: '',
    ),
    User(
      username: 'Jane Smith',
      role: 'Director, Nature Alliance',
      message:
          'Working with Green Earth Consultancy was a game-changer for our organization. Their expertise and dedication to sustainability are unmatched.',
      imageUrl: '',
    ),
    User(
      username: 'John Doe',
      role: 'CEO, EcoTech Inc.',
      message:
          'Green Earth Consultancy provided us with invaluable insights and strategies to reduce our carbon footprint while improving our bottom line. Highly recommend!',
      imageUrl: '',
    ),
    User(
      username: 'Jane Smith',
      role: 'Director, Nature Alliance',
      message:
          'Working with Green Earth Consultancy was a game-changer for our organization. Their expertise and dedication to sustainability are unmatched.',
      imageUrl: '',
    ),
  ];

  static const services = [
    Service(
      icon: Icons.eco,
      name: 'Environmental Impact Assessment',
      description:
          'We assess the environmental impact of your projects and provide sustainable solutions.',
    ),
    Service(
      icon: Icons.landscape,
      name: 'Ecological Surveys',
      description:
          'Our expert ecologists conduct surveys to understand and protect local ecosystems.',
    ),
    Service(
      icon: Icons.local_florist,
      name: 'Biodiversity Conservation',
      description:
          'We work to conserve biodiversity through habitat restoration and protection programs.',
    ),
    Service(
      icon: Icons.recycling,
      name: 'Waste Management',
      description:
          'We work to conserve biodiversity through habitat restoration and protection programs.',
    ),
    Service(
      icon: Icons.lightbulb,
      name: 'Environmental Education and Outreach',
      description:
          'We work to conserve biodiversity through habitat restoration and protection programs.We work to conserve biodiversity through habitat restoration and protection programs We work to conserve biodiversity through habitat restoration and protection programs We work to conserve biodiversity through habitat restoration and protection programs We work to conserve biodiversity through habitat restoration and protection programs',
    ),
    Service(
      icon: Icons.ac_unit,
      name: 'Climate Change Adaptation',
      description:
          'We work to conserve biodiversity through habitat restoration and protection programs.',
    ),
  ];
}

final class Service {
  const Service(
      {required this.name, required this.description, required this.icon});

  final String name;
  final String description;
  final IconData icon;
}

final class Blog {
  const Blog({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.description,
  });

  final String title;
  final String subtitle;
  final String imageUrl;
  final String description;
}

final class User {
  const User({
    required this.username,
    this.role,
    this.message,
    required this.imageUrl,
  });

  final String username;
  final String? role;
  final String? message;
  final String imageUrl;
}
