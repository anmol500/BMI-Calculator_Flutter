import 'package:flutter/material.dart';

import 'Constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPress, required this.buttonTitle});
  final String buttonTitle;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kCalculatorTextStyle,
        )),
        width: double.infinity,
        color: kBottomContainerColor,
      ),
    );
  }
}
