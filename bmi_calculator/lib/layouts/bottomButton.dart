import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTapBottom, @required this.bottomText});
 final Function onTapBottom;
 final String bottomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapBottom,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0XFFEB1555),
            borderRadius: BorderRadius.circular(10)),
        height: 70,
        width: MediaQuery.of(context).size.width * .9,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Center(
            child: Text(
              bottomText,
              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
