import 'package:flutter/material.dart';
import 'package:flutter_bmi/widgets/card.dart';
import 'package:flutter_bmi/widgets/icon.dart';
import 'package:flutter_bmi/store/colors.dart';
import 'package:flutter_bmi/store/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female, gender }

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.gender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: CustomCard(
                    active: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male ? activeCard : inactiveCard,
                    child: CustomIcon(
                        icon: Icon(FontAwesomeIcons.mars, size: 80.0),
                        title: "MALE")),
              ),
              Expanded(
                child: CustomCard(
                    active: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female ? activeCard : inactiveCard,
                    child: CustomIcon(
                        icon: Icon(FontAwesomeIcons.venus, size: 80.0),
                        title: "FEMALE")),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: CustomCard(
                      color: activeCard,
                      child: CustomCard(
                          color: activeCard,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text("HEIGHT", style: titles),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(height.toString(), style: counterTitle),
                                  Text("cm", style: titles)
                                ],
                              ),
                              Slider(
                                  value: height.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  activeColor: bottomContainer,
                                  inactiveColor: inactiveCard,
                                  onChanged: (double value) {
                                    setState(() {
                                      height = value.round();
                                    });
                                  })
                            ],
                          ))))
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomCard(color: activeCard, child: Column())),
              Expanded(child: CustomCard(color: activeCard, child: Column()))
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
