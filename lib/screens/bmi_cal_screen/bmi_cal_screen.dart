import 'package:challenge_flutter/components/widget.dart';
import 'package:challenge_flutter/constants.dart';
import 'package:challenge_flutter/screens/bmi_cal_screen/calculator_brain.dart';
import 'package:challenge_flutter/screens/bmi_cal_screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/bottom_btn.dart';
import 'components/card_bmi.dart';
import 'components/icon_content.dart';
import 'components/round_button.dart';

class BmiCalScreen extends StatelessWidget {
  static const String id = 'bmi_screen';
  final Color active = kActiveBtnBMI;
  final Color deActive = kDeActiveBtnBMI;

  final isTap = {'test': true};
  final data = {'height': 180, 'weight': 60, 'age': 20};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isTap["test"] = !isTap["test"];
                      (context as Element).markNeedsBuild();
                    },
                    child: CardBmi(
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: ReusableWidgets.getTextSubTitle('MALE'),
                      ),
                      color: isTap["test"] ? active : deActive,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isTap["test"] = !isTap["test"];
                      (context as Element).markNeedsBuild();
                    },
                    child: CardBmi(
                      childCard: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: ReusableWidgets.getTextSubTitle('FEMALE'),
                      ),
                      color: isTap["test"] ? deActive : active,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardBmi(
              color: kActiveBtnBMI,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableWidgets.getTextSubTitle('Height'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        data['height'].toString(),
                        style: kNumberTextBMI,
                      ),
                      ReusableWidgets.getTextSubTitle('CM'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: data['height'].toDouble(),
                      min: 110.0,
                      max: 210.0,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        data['height'] = newValue.round();
                        (context as Element).markNeedsBuild();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardBmi(
                    color: kActiveBtnBMI,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReusableWidgets.getTextSubTitle('Weight'),
                        Text(
                          data['weight'].toString(),
                          style: kNumberTextBMI,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButtons(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                data['weight']--;
                                (context as Element).markNeedsBuild();
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButtons(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                data['weight']++;
                                (context as Element).markNeedsBuild();
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardBmi(
                    color: kActiveBtnBMI,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReusableWidgets.getTextSubTitle('AGE'),
                        Text(
                          data['age'].toString(),
                          style: kNumberTextBMI,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButtons(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                data['age']--;
                                (context as Element).markNeedsBuild();
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButtons(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                data['age']++;
                                (context as Element).markNeedsBuild();
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomBtn(
            title: "CALCULATE",
            press: () {
              CalculatorBrain calc = CalculatorBrain(
                  height: data['height'], weight: data['weight']);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpertation(),
                    ),
                  ));
            },
          )
        ],
      ),
    );
  }
}
