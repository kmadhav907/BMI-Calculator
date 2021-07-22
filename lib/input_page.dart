import 'package:bmi_calculator/icon_container.dart';
import 'package:bmi_calculator/reused_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusedContainer(
                        onpress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male
                            ? Color(kCardColor)
                            : Color(kInActiveColor),
                        cardChild: IconContainer(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ))),
                Expanded(
                    child: ReusedContainer(
                  onpress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? Color(kCardColor)
                      : Color(kInActiveColor),
                  cardChild: IconContainer(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  ),
                ))
              ],
            )),
            Expanded(
                child: ReusedContainer(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberStyle),
                      Text("cm", style: kTextStyle)
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFFD8E98),
                    onChanged: (double newValue) {
                      height = newValue.round();
                    },
                  )
                ],
              ),
              colour: Color(kCardColor),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusedContainer(
                  colour: Color(kCardColor),
                )),
                Expanded(
                    child: ReusedContainer(
                  colour: Color(kCardColor),
                ))
              ],
            )),
            Container(
              color: Color(kBottomContainerColor),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
