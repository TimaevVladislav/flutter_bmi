import 'package:flutter/material.dart';
import 'package:flutter_bmi/widgets/card.dart';
import 'package:flutter_bmi/store/colors.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(child: CustomCard(color: activeCard)),
              Expanded(child: CustomCard(color: activeCard))
            ],
          ),
          Row(
            children: [Expanded(child: CustomCard(color: activeCard))],
          ),
          Row(
            children: [
              Expanded(child: CustomCard(color: activeCard)),
              Expanded(child: CustomCard(color: activeCard))
            ],
          ),
          Container(
            color: bottomContainer,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}
