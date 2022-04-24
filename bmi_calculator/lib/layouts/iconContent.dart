import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class CardIcon extends StatelessWidget {
  CardIcon({@required this.cardIconInd, @required this.label});

final IconData cardIconInd;
final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(cardIconInd,size: 80,),
        SizedBox(height: 20,),
        Text(label,style: kLabelTextStyle,)
      ],
    );
  }
}
