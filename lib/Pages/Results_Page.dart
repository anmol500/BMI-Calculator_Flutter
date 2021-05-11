import 'package:bmi_calculator/Bottom_Button.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/Pages/Input_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  Results({
    required this.resultText,
    required this.resultBMI,
    required this.resultInterpretation,
  });

  final String resultText;
  final String resultBMI;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 0,
              child: Center(
                child: Text(
                  'Your Results',
                  style: kResultTextStyle,
                ),
              )),
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kInActiveContainerColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultBmiStyle,
                    ),
                    Text(
                      resultBMI,
                      style: kResultNumberStyle,
                    ),
                    Text(
                      resultInterpretation,
                      style: kResultCommentStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: BottomButton(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              buttonTitle: 'RE-CALCULATE',
            ),
          )
        ],
      ),
    );
  }
}
