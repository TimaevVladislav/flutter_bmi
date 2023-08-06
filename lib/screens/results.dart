import 'package:flutter/material.dart';
import 'package:flutter_bmi/widgets/calculate.dart';
import 'package:flutter_bmi/store/colors.dart';
import 'package:flutter_bmi/store/style.dart';
import 'package:flutter_bmi/widgets/card.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('BMI CALCULATOR'))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text("Your Result", style: counterTitle))),
            Expanded(
                child: CustomCard(
                    color: activeCard,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Normal", style: resultTitle),
                        Text("18.3", style: bmiTitle),
                        Text(
                            "Your BMI result is quite low, you should eat more!",
                            textAlign: TextAlign.center,
                            style: answerBmiTitle),
                      ],
                    )),
                flex: 5),
            BottomButton(
                title: "RE-CALCULATE",
                pressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
