import 'package:bmi_calculator/Results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Bottom_Button.dart';
import 'Constants.dart';
import 'IconGender.dart';
import 'ReuseableCard.dart';
import 'RoundButton.dart';

//QuickAccess
var height = 180;
enum GenderSelected { male, female, no }
bool male = false;
GenderSelected gender = GenderSelected.no;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int weight = 60;
  int age = 35;
  @override
  Widget build(BuildContext context) {
    var maleCardColor = kInActiveContainerColor;
    var femaleCardColor = kInActiveContainerColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 7, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                gender = GenderSelected.male;
                              });
                            },
                            child: ReuseableCard(
                              color: gender == GenderSelected.male &&
                                      maleCardColor == kInActiveContainerColor
                                  ? maleCardColor = kActiveContainerColor
                                  : maleCardColor = kInActiveContainerColor,
                              cardChild: IconGender(
                                iconData: FontAwesomeIcons.mars,
                                genderText: 'Male',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                gender = GenderSelected.female;
                              });
                            },
                            child: ReuseableCard(
                              color: gender == GenderSelected.female &&
                                      femaleCardColor == kInActiveContainerColor
                                  ? femaleCardColor = kActiveContainerColor
                                  : femaleCardColor = kInActiveContainerColor,
                              cardChild: IconGender(
                                iconData: FontAwesomeIcons.venus,
                                genderText: 'Female',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ReuseableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: kInactiveSliderColor,
                              activeTrackColor: Colors.white,
                              thumbColor: kActiveSliderColor,
                              overlayColor: Color(0x1feb1555),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: height / 10 - 2.5)),
                          child: Slider(
                              inactiveColor: kInactiveSliderColor,
                              min: 120,
                              max: 220,
                              value: height.toDouble(),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.toInt();
                                });
                              }),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: ReuseableCard(
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(
                                    icon: Icons.add,
                                    onPress: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RoundButton(
                                    icon: Icons.remove,
                                    onPress: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                        Expanded(
                            child: ReuseableCard(
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                age.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(
                                    icon: Icons.add,
                                    onPress: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RoundButton(
                                    icon: Icons.remove,
                                    onPress: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            flex: 7,
          ),
          Expanded(
            flex: 1,
            child: BottomButton(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Results()));
              },
              buttonTitle: 'CALCULATE',
            ),
          )
        ],
      ),
    );
  }
}
