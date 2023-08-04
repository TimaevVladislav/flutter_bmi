import 'package:flutter/material.dart';
import 'package:flutter_bmi/widgets/card.dart';
import 'package:flutter_bmi/widgets/icon.dart';
import 'package:flutter_bmi/store/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female, gender }

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.gender;

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
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: CustomCard(
                        color:
                            gender == Gender.male ? activeCard : inactiveCard,
                        child: CustomIcon(
                            icon: Icon(FontAwesomeIcons.mars, size: 80.0),
                            title: "MALE"))),
              ),
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: CustomCard(
                        color:
                            gender == Gender.female ? activeCard : inactiveCard,
                        child: CustomIcon(
                            icon: Icon(FontAwesomeIcons.venus, size: 80.0),
                            title: "FEMALE"))),
              )
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomCard(color: activeCard, child: Column()))
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
