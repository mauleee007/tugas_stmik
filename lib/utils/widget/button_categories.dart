import 'package:flutter/material.dart';

import '../color/colors.dart';
import '../dimention/dimentions.dart';
import 'small_text.dart';

class ButtonCategories extends StatelessWidget {
  const ButtonCategories({
    super.key,
    required this.name,
    required this.icon,
    required this.tap,
  });
  final String name;
  final IconData icon;
  final void Function()? tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: Dimensi.blockSizeHorizontal! * 20,
        height: Dimensi.blockSizeVertical! * 5,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icon,
                size: Dimensi.blockSizeVertical! * 2,
              ),
              SmallText(
                text: name,
                size: Dimensi.blockSizeVertical! * 1.5,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 24,
                offset: Offset(0, 11),
              ),
            ],
            color: ColorTheme.bgColor,
            borderRadius:
                BorderRadius.circular(Dimensi.blockSizeVertical! * 1)),
      ),
    );
  }
}
