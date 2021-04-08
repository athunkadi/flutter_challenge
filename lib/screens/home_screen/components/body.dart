import 'package:challenge_flutter/screens/bit_ticker_screen/bit_ticker_screen.dart';
import 'package:challenge_flutter/screens/bmi_cal_screen/bmi_cal_screen.dart';
import 'package:challenge_flutter/screens/flash_chat_screen/flash_chat_screen.dart';
import 'package:challenge_flutter/screens/micard_screen/micard_screen.dart';
import 'package:challenge_flutter/screens/task_screen/task_screen.dart';
import 'package:flutter/material.dart';

import 'challenge_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ChallengeBtn(
            title: "Mi Card",
            onPress: () {
              Navigator.pushNamed(context, MicardScreen.id);
            },
          ),
          ChallengeBtn(
            title: "BMI Calculator",
            onPress: () {
              Navigator.pushNamed(context, BmiCalScreen.id);
            },
          ),
          ChallengeBtn(
            title: "Bitcoin Ticker",
            onPress: () {
              Navigator.pushNamed(context, PriceScreen.id);
            },
          ),
          ChallengeBtn(
            title: "Flash Chat",
            onPress: () {
              Navigator.pushNamed(context, FlashChatScreen.id);
            },
          ),
          ChallengeBtn(
            title: "Todoey",
            onPress: () {
              Navigator.pushNamed(context, TasksScreen.id);
            },
          )
        ],
      ),
    );
  }
}
