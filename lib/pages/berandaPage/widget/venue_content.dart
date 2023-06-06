import 'package:flutter/material.dart';

import '../../../utils/color/colors.dart';
import '../../../utils/dimention/dimentions.dart';
import '../../../utils/widget/small_text.dart';

class VenueContent extends StatelessWidget {
  const VenueContent({
    super.key,
    required this.img,
    required this.name,
    required this.shortDesc,
    required this.price,
  });
  final String img;
  final String name;
  final String shortDesc;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: Dimensi.blockSizeVertical! * 39,
          margin: EdgeInsets.only(
            top: Dimensi.blockSizeVertical! * 2,
            left: Dimensi.blockSizeHorizontal! * 1.5,
            right: Dimensi.blockSizeHorizontal! * 1.5,
          ),
          decoration: BoxDecoration(
            color: ColorTheme.bgColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
              topRight: Radius.circular(Dimensi.blockSizeVertical! * 1),
              bottomLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
              bottomRight: Radius.circular(Dimensi.blockSizeVertical! * 1),
            ),
            image: DecorationImage(
              image: AssetImage(
                img,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: Dimensi.blockSizeVertical! * 10,
            margin: EdgeInsets.only(
              left: Dimensi.blockSizeHorizontal! * 1.5,
              right: Dimensi.blockSizeHorizontal! * 1.5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
                bottomRight: Radius.circular(Dimensi.blockSizeVertical! * 1),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SmallText(
                  text: name,
                  fontStyle: FontStyle.italic,
                  spacing: 0.5,
                  color: ColorTheme.primaryColor,
                  size: Dimensi.blockSizeVertical! * 1.5,
                ),
                SmallText(
                  text: shortDesc,
                  spacing: 0.5,
                  size: Dimensi.blockSizeVertical! * 1.5,
                ),
                SmallText(
                  text: "Price : ",
                  spacing: 0.5,
                  size: Dimensi.blockSizeVertical! * 1.5,
                ),
                SmallText(
                  text: "Rp." + price.toString(),
                  spacing: 0.5,
                  size: Dimensi.blockSizeVertical! * 1.7,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
