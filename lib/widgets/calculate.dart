import 'package:flutter/material.dart';
import 'package:flutter_bmi/store/style.dart';
import 'package:flutter_bmi/store/colors.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.title, required this.pressed});
  final String title;
  final pressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
          child: Center(child: Text(title, style: calculateTitle)),
          color: bottomContainer,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(bottom: 20.0),
          width: double.infinity,
          height: 80.0),
    );
  }
}
