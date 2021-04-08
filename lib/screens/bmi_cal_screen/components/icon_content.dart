import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    this.icon,
    this.label,
  });

  final IconData icon;
  final Text label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 5.0,
        ),
        label
      ],
    );
  }
}
