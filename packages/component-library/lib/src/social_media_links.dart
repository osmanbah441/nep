import 'package:component_library/src/flexible_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({
    super.key,
    required this.onFacebook,
    required this.onTwitter,
    required this.onInstagram,
    required this.onLinkedIn,
    required this.onWhatsapp,
  });

  final VoidCallback onFacebook;
  final VoidCallback onTwitter;
  final VoidCallback onInstagram;
  final VoidCallback onLinkedIn;
  final VoidCallback onWhatsapp;

  @override
  Widget build(BuildContext context) {
    return FlexibleCard(
      padding: const EdgeInsets.all(16),
      divisor: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _SocialMediaIconButton(
            tooltip: "Facebook",
            icon: FontAwesomeIcons.facebook,
            color: Colors.blue,
            onPressed: onFacebook,
          ),
          _SocialMediaIconButton(
            tooltip: "Twitter",
            icon: FontAwesomeIcons.xTwitter,
            color: Colors.lightBlueAccent,
            onPressed: onTwitter,
          ),
          _SocialMediaIconButton(
            tooltip: "Instagram",
            icon: FontAwesomeIcons.instagram,
            color: Colors.pink,
            onPressed: onInstagram,
          ),
          _SocialMediaIconButton(
            tooltip: "LinkedIn",
            icon: FontAwesomeIcons.linkedinIn,
            color: Colors.blueAccent,
            onPressed: onLinkedIn,
          ),
          _SocialMediaIconButton(
            tooltip: "Whatsapp",
            icon: FontAwesomeIcons.whatsapp,
            color: Colors.greenAccent,
            onPressed: onWhatsapp,
          ),
        ],
      ),
    );
  }
}

class _SocialMediaIconButton extends StatelessWidget {
  const _SocialMediaIconButton({
    required this.icon,
    required this.onPressed,
    required this.tooltip,
    required this.color,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: FaIcon(icon),
      tooltip: tooltip,
      color: color,
    );
  }
}
