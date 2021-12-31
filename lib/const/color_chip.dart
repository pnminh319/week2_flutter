import 'package:flutter/material.dart';

class ColorChip extends StatelessWidget {
  final Color color;
  const ColorChip({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
