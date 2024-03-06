import 'package:component_library/src/flexible_card.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard(
      {super.key, required this.icon, required this.info, this.subInfo});

  final IconData icon;
  final String info;
  final String? subInfo;

  @override
  Widget build(BuildContext context) {
    return FlexibleCard(
        divisor: 2,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: ListTile(
          leading: Icon(
            icon,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
          title: Column(
            children: [
              Text(info),
              if (subInfo != null) const Divider(),
              if (subInfo != null) Text(subInfo!),
            ],
          ),
        ));
  }
}
