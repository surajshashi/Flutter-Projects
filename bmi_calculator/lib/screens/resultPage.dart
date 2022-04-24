import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/layouts/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/inputPage.dart';
import 'package:bmi_calculator/layouts/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmi, @required this.result, @required this.comments, @required this.color});

final String bmi;
final String comments;
final String result;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Center(
                  child: Text(
            "Your Result",
            style: kTitleStyle,
          ))),
          Expanded(
              flex: 6,
              child: ReusableCard(
                cardColor: kCardColour,
                cardChild: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * .95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        result,
                        style: TextStyle(
                            color: color ,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        bmi,
                        style: kAnswerStyle,
                      ),
                      Text(
                        comments,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )),
          BottomButton(onTapBottom:() {Navigator.pop(context);}, bottomText: "RE-CALCULATE"),
        ],
      ),
    );
  }
}
