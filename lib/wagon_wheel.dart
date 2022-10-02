library wagon_wheel;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wagon_wheel/models/ball.dart';
import 'package:wagon_wheel/painter/boundary.dart';

class WagonWheel extends StatelessWidget {
  final List<Ball> balls;
  final Widget background;
  final double diameter;
  final Color fourColor, sixColor;
  final bool isInverse;
  const WagonWheel({
    super.key,
    required this.balls,
    required this.background,
    this.diameter = 250,
    this.fourColor = Colors.blue,
    this.sixColor = Colors.red,
    this.isInverse = false,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationX(isInverse ? pi : 0),
      child: Container(
        height: diameter,
        width: diameter,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: CustomPaint(
          foregroundPainter: Boundary(
            values: balls,
            sixColor: sixColor,
            fourColor: fourColor,
          ),
          child: background,
        ),
      ),
    );
  }
}
