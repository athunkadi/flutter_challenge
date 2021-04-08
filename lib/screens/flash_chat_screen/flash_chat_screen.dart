import 'package:challenge_flutter/screens/flash_chat_screen/login_screen.dart';
import 'package:challenge_flutter/screens/flash_chat_screen/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'components/button_widget.dart';

class FlashChatScreen extends StatefulWidget {
  static const String id = "flashchatScreen";
  @override
  _FlashChatScreenState createState() => _FlashChatScreenState();
}

class _FlashChatScreenState extends State<FlashChatScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      // upperBound: 100.0,
    );

    // setting animation bergerak
    // animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    //nilai tambah
    controller.forward();

    //nilai kurang dari 1.0
    // controller.reverse(from: 1.0);

    // kondisi untuk animation bergerak
    // animation.addStatusListener((status) => {
    //       // print(status),
    //       if (status == AnimationStatus.completed)
    //         {
    //           controller.reverse(from: 1.0),
    //         }
    //       else if (status == AnimationStatus.dismissed)
    //         {
    //           controller.forward(),
    //         }
    //     });

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  //untuk memberhentikan controller animation saat screen sudah tidak di panggil.
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'Logo',
                  child: Container(
                    child: Image.asset('assets/images/logo.png'),
                    height: 60.0,
                  ),
                ),
                FadeAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            ButtonWidget(
              title: 'Log In',
              press: () {
                //Go to login screen.
                Navigator.pushNamed(context, LoginScreen.id);
              },
              color: Colors.lightBlueAccent,
            ),
            ButtonWidget(
              title: 'Register',
              color: Colors.blueAccent,
              press: () {
                //Go to registration screen.
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
