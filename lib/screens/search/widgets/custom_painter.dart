import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherCustomPainter extends CustomPainter {
  WeatherCustomPainter({
    required this.color1,
    required this.color2,
  });
  Color color1;
  Color color2;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.3796549);
    path_0.cubicTo(0, size.height * 0.1808314, 0, size.height * 0.08141943,
        size.width * 0.03311696, size.height * 0.02994537);
    path_0.cubicTo(
        size.width * 0.06623363,
        size.height * -0.02152880,
        size.width * 0.1157971,
        size.height * 0.0008455886,
        size.width * 0.2149243,
        size.height * 0.04559434);
    path_0.lineTo(size.width * 0.9003012, size.height * 0.3549931);
    path_0.cubicTo(
        size.width * 0.9481257,
        size.height * 0.3765817,
        size.width * 0.9720351,
        size.height * 0.3873766,
        size.width * 0.9860175,
        size.height * 0.4217320);
    path_0.cubicTo(size.width, size.height * 0.4560880, size.width,
        size.height * 0.5040491, size.width, size.height * 0.5999714);
    path_0.lineTo(size.width, size.height * 0.7485714);
    path_0.cubicTo(
        size.width,
        size.height * 0.8670971,
        size.width,
        size.height * 0.9263600,
        size.width * 0.9811579,
        size.height * 0.9631771);
    path_0.cubicTo(size.width * 0.9623187, size.height, size.width * 0.9319942,
        size.height, size.width * 0.8713450, size.height);
    path_0.lineTo(size.width * 0.1286550, size.height);
    path_0.cubicTo(
        size.width * 0.06800643,
        size.height,
        size.width * 0.03768216,
        size.height,
        size.width * 0.01884108,
        size.height * 0.9631771);
    path_0.cubicTo(0, size.height * 0.9263600, 0, size.height * 0.8670971, 0,
        size.height * 0.7485714);
    path_0.lineTo(0, size.height * 0.3796549);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill; // (0xff5735B2)
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.7314286),
        Offset(size.width * 1.035503, size.height * 0.7314286),
        [color1, color2],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
