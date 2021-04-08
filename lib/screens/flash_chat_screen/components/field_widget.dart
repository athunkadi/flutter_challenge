import 'package:challenge_flutter/constants.dart';
import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({
    this.title,
    @required this.change,
    this.controller,
  });

  final String title;
  final Function change;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType:
          title == 'Enter your email' ? TextInputType.emailAddress : null,
      obscureText: title == 'Enter your password' ? true : false,
      textAlign: TextAlign.center,
      onChanged: change,
      decoration: kTextFieldDecoration.copyWith(hintText: title),
    );
  }
}
