import 'package:bmi_calculator/layouts/iconContent.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor, this.cardChild, this.onPress});
  final Color cardColor;
  final Widget cardChild;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.lightBlue.shade400,
            spreadRadius: 2,
            blurRadius: 5,

          ),],
          border: Border.all(color: Color(0XFF0A0F31),width: 0),
          borderRadius: BorderRadius.circular(12),
          color: cardColor,
        ),
      ),
    );
  }
}
