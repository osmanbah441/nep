import 'dart:math' as math;
import 'package:flutter/material.dart';

class PulsatingCircle extends StatefulWidget {
  final Duration duration;
  final double minRadius;
  final double maxRadius;
  final double strokeWidth;
  final Color color;

  const PulsatingCircle({
    Key? key,
    this.duration = const Duration(seconds: 2),
    this.minRadius = -1.0,
    this.maxRadius = 200.0,
    this.strokeWidth = 2.0,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  _PulsatingCircleState createState() => _PulsatingCircleState();
}

class _PulsatingCircleState extends State<PulsatingCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat(reverse: true);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedScale(
        duration: widget.duration,
        scale: _scaleAnimation.value,
        child: CustomPaint(
          painter: _PulsePainter(
            animation: _scaleAnimation,
            strokeWidth: widget.strokeWidth,
            color: widget.color,
            minRadius: widget.minRadius,
            maxRadius: widget.maxRadius,
          ),
        ),
      ),
    );
  }
}

class _PulsePainter extends CustomPainter {
  final Animation<double> animation;
  final double strokeWidth;
  final Color color;
  final double minRadius;
  final double maxRadius;

  _PulsePainter({
    required this.animation,
    required this.strokeWidth,
    required this.color,
    required this.minRadius,
    required this.maxRadius,
  }) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final double radius = minRadius +
        (maxRadius - minRadius) *
            animation.value *
            (1 + math.sin(math.pi * animation.value)) /
            2;

    canvas.drawCircle(size.center(Offset.zero), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    final _PulsePainter oldPainter = oldDelegate as _PulsePainter;
    return animation.value != oldPainter.animation.value;
  }
}
