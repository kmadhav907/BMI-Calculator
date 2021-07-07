import 'package:bmi_calculator/icon_container.dart';
import 'package:bmi_calculator/reused_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 60.0;
const cardColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;
const inActiveColor = 0xFF111328;
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = Color(inActiveColor);
  Color femaleCardColour = Color(inActiveColor);
  void updateColour(Gender selectedGender) {
    //male card pressed
    if (selectedGender == Gender.male) {
      if (maleCardColour == Color(inActiveColor)) {
        maleCardColour = Color(cardColor);
        femaleCardColour = Color(inActiveColor);
      } else {
        maleCardColour = Color(inActiveColor);
      }
    }
    //female card pressed
    if (selectedGender == Gender.female) {
      if (femaleCardColour == Color(inActiveColor)) {
        femaleCardColour = Color(cardColor);
        maleCardColour = Color(inActiveColor);
      } else {
        femaleCardColour = Color(inActiveColor);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.male);
                    });
                  },
                  child: ReusedContainer(
                      colour: maleCardColour,
                      cardChild: IconContainer(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      )),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.female);
                    });
                  },
                  child: ReusedContainer(
                    colour: femaleCardColour,
                    cardChild: IconContainer(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ))
              ],
            )),
            Expanded(
                child: ReusedContainer(
              colour: Color(cardColor),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusedContainer(
                  colour: Color(cardColor),
                )),
                Expanded(
                    child: ReusedContainer(
                  colour: Color(cardColor),
                ))
              ],
            )),
            Container(
              color: Color(bottomContainerColor),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
