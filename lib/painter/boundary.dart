import 'dart:math';

import 'package:flutter/material.dart';

import '../models/ball.dart';

class Boundary extends CustomPainter {
  final List<Ball?> values;
  final Color fourColor;
  final Color sixColor;

  Boundary({
    required this.values,
    required this.fourColor,
    required this.sixColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final radius = height * 0.5;
    final strikePoint = Offset(width * 0.5, height * 0.57);

    for (int i = 0; i < values.length; i++) {
      if (values[i] != null) {
        final ball = values[i]!;
        final paint = Paint();
        paint.color = ball.runs == 6 ? sixColor : fourColor;
        paint.strokeWidth = 1.5;

        final degrees = (ball.zad * pi) / 180;
        final x = radius * cos(degrees);
        final y = height * sin(degrees);
        canvas.drawLine(strikePoint, Offset(radius + x, radius + y), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
