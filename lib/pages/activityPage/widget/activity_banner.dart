import 'package:flutter/material.dart';

import '../../../utils/dimention/dimentions.dart';

class ActivityCard extends StatelessWidget {
  ActivityCard(
      {super.key,
      required this.img,
      this.icons = Icons.bookmark,
      required this.color});
  final String img;
  final IconData icons;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  img,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Icon(
              icons,
              color: color,
              size: Dimensi.blockSizeVertical! * 3,
            ),
          ),
        ],
      ),
    );
  }
}
