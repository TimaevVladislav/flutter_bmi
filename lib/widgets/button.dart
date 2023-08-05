import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {},
        shape: CircleBorder(),
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        fillColor: Color(0xFF4C4F5E),
        child: icon);
  }
}
