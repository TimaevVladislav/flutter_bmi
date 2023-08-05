import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.color, required this.child, this.active});
  final Color color;
  final Widget child;
  final active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: active,
        child: Container(
            child: child,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10.0)),
            height: 200.0,
            width: 170.0));
  }
}
