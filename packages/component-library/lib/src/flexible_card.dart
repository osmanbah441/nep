import 'package:flutter/material.dart';

class FlexibleCard extends StatelessWidget {
  const FlexibleCard({
    super.key,
    this.color,
    this.divisor = 3,
    this.fixWidth,
    this.fixHeight,
    required this.padding,
    required this.child,
  });

  final EdgeInsets padding;
  final Color? color;
  final Widget child;
  final double divisor;
  final double? fixWidth, fixHeight;

  @override
  Widget build(BuildContext context) {
    final double cardWidth = MediaQuery.of(context).size.width /
        (MediaQuery.of(context).size.width > 600 ? divisor : 1);

    return Card(
      color: color,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        width: fixWidth ?? cardWidth,
        height: fixHeight,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
