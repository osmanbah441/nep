import 'package:flutter/material.dart';

class WrapContentContainer extends StatelessWidget {
  const WrapContentContainer({
    super.key,
    required this.children,
    required this.headingText,
    this.backgroundColor,
    this.onPressed,
    this.buttonLabel = '',
  });

  final List<Widget> children;
  final String headingText;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(headingText, style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 20),
          Wrap(spacing: 8, runSpacing: 8, children: children),
          const SizedBox(height: 20),
          if (onPressed != null)
            ElevatedButton(onPressed: onPressed, child: Text(buttonLabel))
        ],
      ),
    );
  }
}
