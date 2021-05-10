import 'package:flutter/material.dart';

import 'Constants.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {this.color = kInActiveContainerColor,
      this.cardChild = const Center(child: Text(''))});

  //Properties
  final Color color;

  final Widget cardChild;

  //build Func
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.fromLTRB(7, 9, 7, 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: color,
      ),
    );
  }
}
