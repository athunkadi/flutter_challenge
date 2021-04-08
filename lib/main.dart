import 'package:challenge_flutter/constants.dart';
import 'package:challenge_flutter/screens/bit_ticker_screen/bit_ticker_screen.dart';
import 'package:challenge_flutter/screens/bmi_cal_screen/bmi_cal_screen.dart';
import 'package:challenge_flutter/screens/flash_chat_screen/chat_screen.dart';
import 'package:challenge_flutter/screens/flash_chat_screen/flash_chat_screen.dart';
import 'package:challenge_flutter/screens/flash_chat_screen/login_screen.dart';
import 'package:challenge_flutter/screens/flash_chat_screen/registration_screen.dart';
import 'package:challenge_flutter/screens/home_screen/home_screen.dart';
import 'package:challenge_flutter/screens/micard_screen/micard_screen.dart';
import 'package:challenge_flutter/screens/task_screen/task_screen.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Challenge flutter Apps",
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
      // home: HomeScreen(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        MicardScreen.id: (context) => MicardScreen(),
        BmiCalScreen.id: (context) => BmiCalScreen(),
        PriceScreen.id: (context) => PriceScreen(),
        FlashChatScreen.id: (context) => FlashChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        TasksScreen.id: (context) => TasksScreen(),
      },
    );
  }
}
