import 'package:flutter/material.dart';

class ReusableWidgets {
  static getAppBar(String title) {
    return AppBar(
      elevation: 0,
      title: Center(
        child: Text(title),
      ),
    );
  }

  static getAvatar(String avatar) {
    return CircleAvatar(
      radius: 50.0,
      backgroundImage: AssetImage(avatar),
    );
  }

  static getTextTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Pacifico',
        fontSize: 40.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static getTextSubTitle(String title) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(
        fontFamily: 'Source Sans Pro',
        fontSize: 20.0,
        color: Colors.teal.shade100,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
