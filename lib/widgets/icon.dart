import 'package:flutter/material.dart';
import 'package:flutter_bmi/store/style.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({required this.icon, required this.title});
  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(height: 15.0),
        Text(title, style: titles)
      ],
    );
  }
}
