// import 'package:challenge_flutter/components/widget.dart';
import 'package:challenge_flutter/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class MicardScreen extends StatelessWidget {
  static const String id = 'micard_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ReusableWidgets.getAppBar('Mi Card App'),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
