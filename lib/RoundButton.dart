import 'package:flutter/material.dart';

import 'Constants.dart';

class RoundButton extends StatelessWidget {
  RoundButton({
    required this.icon,
    required this.onPress,
  });

  final Function() onPress;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: kRoundButtonColor,
      onPressed: onPress,
      elevation: 3.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
