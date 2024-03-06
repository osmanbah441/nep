import 'package:flutter/material.dart';

import 'pulsing_circle.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.height = 300});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: Stack(
          children: [
            const PulsatingCircle(
                duration: Duration(seconds: 2), color: Colors.green),
            const PulsatingCircle(
              duration: Duration(seconds: 4),
              color: Colors.green,
            ),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                package: 'component_library',
                fit: BoxFit.fitHeight,
                width: 450,
              ),
            )
          ],
        ),
      ),
    );
  }
}
