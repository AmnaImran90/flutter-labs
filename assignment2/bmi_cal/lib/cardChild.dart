import 'package:flutter/material.dart';
import 'package:bmi_cal/constants.dart';


const double iconSize = 90.0;
const sizedBoxHeight = 15.0;

class CardChild extends StatelessWidget {
  final IconData? icon;
  final String label;

  CardChild({@required this.icon, this.label=''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: iconSize,
        ),
       SizedBox(
         height:sizedBoxHeight
       ),
       Text(
         this.label,
          style:kLabelTextStyle,
       ),
      ],
    );
  }
}