import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.quadraticBezierTo(
        0, size.height * 0.3662500, 0, size.height * 0.1550000);
    path0.quadraticBezierTo(size.width * 0.2300000, size.height * -0.0337500,
        size.width * 0.5000000, 0);
    path0.quadraticBezierTo(size.width * 0.7687500, size.height * -0.0362500,
        size.width, size.height * 0.1450000);
    path0.quadraticBezierTo(
        size.width, size.height * 0.3587500, size.width, size.height);
    path0.lineTo(0, size.height);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
