import 'dart:js';

import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({required this.icon, required this.pressed});
  final Icon icon;
  final pressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: pressed,
        shape: CircleBorder(),
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        fillColor: Color(0xFF4C4F5E),
        child: icon);
  }
}
