import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        height: 200.0,
        width: 170.0);
  }
}
