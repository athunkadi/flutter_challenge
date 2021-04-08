import 'package:flutter/material.dart';

class RoundIconButtons extends StatelessWidget {
  RoundIconButtons({this.icon, this.press});

  final IconData icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: press,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 35.0, height: 35.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
