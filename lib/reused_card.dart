import 'package:flutter/material.dart';

class ReusedContainer extends StatelessWidget {
  final Color colour;
  ReusedContainer({@required this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ));
  }
}
