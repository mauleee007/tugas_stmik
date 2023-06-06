import 'package:flutter/material.dart';

import '../dimention/dimentions.dart';

class ContentBanner extends StatelessWidget {
  const ContentBanner({
    super.key,
    required this.img,
  });
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensi.blockSizeVertical! * 3),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            img,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
            bottomRight: Radius.circular(Dimensi.blockSizeVertical! * 1),
            topLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
            topRight: Radius.circular(Dimensi.blockSizeVertical! * 1)),
      ),
    );
  }
}
