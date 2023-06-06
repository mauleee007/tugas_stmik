import 'package:flutter/material.dart';

import '../dimention/dimentions.dart';
import 'small_text.dart';

class DividerText extends StatelessWidget {
  const DividerText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Dimensi.blockSizeVertical! * 2,
        left: Dimensi.blockSizeHorizontal! * 3,
        bottom: Dimensi.blockSizeVertical! * 2,
      ),
      child: SmallText(
        text: text,
        spacing: 0.5,
        size: Dimensi.blockSizeVertical! * 1.5,
      ),
    );
  }
}
