import 'package:flutter/material.dart';

class CardBmi extends StatelessWidget {
  const CardBmi({this.childCard, this.color});

  final Widget childCard;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
