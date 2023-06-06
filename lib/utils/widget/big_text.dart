import 'package:flutter/material.dart';

import '../dimention/dimentions.dart';

class BigText extends StatelessWidget {
  BigText({
    Key? key,
    this.color = const Color(0xFF3a3b3c),
    required this.text,
    this.size = 0,
    this.spacing,
  }) : super(key: key);
  Color? color;
  final String text;
  double size;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        letterSpacing: spacing,
        color: color,
        fontSize: size == 0 ? Dimensi.blockSizeVertical! * 1.5 : size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
