import 'package:challenge_flutter/components/widget.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'card_widget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ReusableWidgets.getAvatar("assets/images/Pasphoto.png"),
          ReusableWidgets.getTextTitle("Adi Nugroho"),
          ReusableWidgets.getTextSubTitle("Flutter Developer"),
          CardWidget(
            icon: Icon(
              Icons.phone,
              color: kPrimaryColor,
            ),
            title: "+62-889-0880-8028",
          ),
          CardWidget(
            icon: Icon(
              Icons.email,
              color: kPrimaryColor,
            ),
            title: "caturadi.nu@gmail.com",
          ),
        ],
      ),
    );
  }
}
