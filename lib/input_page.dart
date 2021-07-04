import 'package:bmi_calculator/reused_card.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 60.0;
const cardColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusedContainer(
                  colour: Color(cardColor),
                )),
                Expanded(
                    child: ReusedContainer(
                  colour: Color(cardColor),
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
