import 'package:adrian_maulana_firdaus_2142425/utils/color/colors.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/widget/small_text.dart';

import '../dimention/dimentions.dart';
import 'package:flutter/material.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Dimensi.blockSizeVertical! * 20,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
        color: ColorTheme.bgColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
            bottomRight: Radius.circular(Dimensi.blockSizeVertical! * 1)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Logout success.'),
                  ));
                },
                icon: Icon(Icons.logout),
                color: Colors.grey,
                iconSize: Dimensi.blockSizeVertical! * 3,
              ),
              Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    size: Dimensi.blockSizeVertical! * 3,
                    color: Colors.grey,
                  ),
                  Positioned(
                    right: 0,
                    left: 7,
                    top: 1,
                    child: CircleAvatar(
                      radius: Dimensi.blockSizeVertical! * 0.5,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              )
            ],
          ),
          SmallText(
            text: "Love Wedding",
            size: Dimensi.blockSizeVertical! * 3,
            color: ColorTheme.primaryColor,
          ),
          SmallText(
            text: "easy to fall in love",
            size: Dimensi.blockSizeVertical! * 1.5,
            spacing: 2,
            color: ColorTheme.primaryColor,
          ),
        ],
      ),
    );
  }
}
