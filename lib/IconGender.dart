import 'package:flutter/material.dart';

import 'Constants.dart';

//QuickAccess
const double iconsize = 95.0;

class IconGender extends StatelessWidget {
  IconGender({required this.iconData, required this.genderText});

  //Properties
  final IconData iconData;
  final String genderText;

  //Build
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: iconsize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
