import 'package:flutter/material.dart';

class BottomBtn extends StatelessWidget {
  const BottomBtn({this.title, this.press});

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: Colors.red,
        margin: EdgeInsets.only(top: 10.0),
        height: 80.0,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Source Sans Pro",
            ),
          ),
        ),
      ),
    );
  }
}
