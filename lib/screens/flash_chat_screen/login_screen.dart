import 'package:challenge_flutter/screens/flash_chat_screen/chat_screen.dart';
import 'package:challenge_flutter/screens/flash_chat_screen/components/button_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'components/field_widget.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "loginChat";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Hero(
                    tag: "Logo",
                    child: Container(
                      height: 200.0,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  FieldWidget(
                    controller: emailTextController,
                    change: (value) {
                      //Do something with the user input.
                      email = value;
                    },
                    title: 'Enter your email',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  FieldWidget(
                    controller: passwordTextController,
                    change: (value) {
                      //Do something with the user input.
                      password = value;
                    },
                    title: 'Enter your password',
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  ButtonWidget(
                    title: 'Log In',
                    color: Colors.lightBlueAccent,
                    press: () async {
                      //Implement login functionality.
                      emailTextController.clear();
                      passwordTextController.clear();
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (user != null) {
                          Navigator.pushNamed(context, ChatScreen.id);
                        }

                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e.hashCode);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
