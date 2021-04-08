import 'package:challenge_flutter/components/widget.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableWidgets.getAppBar("My Challenge Flutter Apps"),
      body: Body(),
    );
  }
}
