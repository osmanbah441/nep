import 'package:flutter/material.dart';

class ExpandedElevatedButton extends StatelessWidget {
  const ExpandedElevatedButton({
    super.key,
    this.onPressed,
    required this.label,
  });

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(onPressed: onPressed, child: Text(label)),
    );
  }
}
