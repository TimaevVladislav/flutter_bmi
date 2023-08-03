import 'package:flutter/material.dart';
import 'package:flutter_bmi/widgets/card.dart';

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
              Expanded(child: CustomCard()),
              Expanded(child: CustomCard())
            ],
          ),
          Row(
            children: [Expanded(child: CustomCard())],
          ),
          Row(
            children: [
              Expanded(child: CustomCard()),
              Expanded(child: CustomCard())
            ],
          ),
        ],
      ),
    );
  }
}
