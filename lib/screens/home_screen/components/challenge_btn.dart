import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChallengeBtn extends StatelessWidget {
  const ChallengeBtn({
    Key key,
    this.title,
    this.onPress,
  }) : super(key: key);

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(0, 3),
          blurRadius: 20,
          color: Colors.black.withOpacity(0.15),
        )
      ]),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
