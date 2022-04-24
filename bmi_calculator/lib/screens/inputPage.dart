import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/layouts/bottomButton.dart';
import 'package:bmi_calculator/layouts/buttonContent.dart';
import 'package:bmi_calculator/layouts/iconContent.dart';
import 'package:bmi_calculator/screens/resultPage.dart';
import 'package:bmi_calculator/layouts/reusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  Color femaleCardColor = kCardColour;
  Color maleCardColor = kCardColour;
  int height = 180;
  int weight = 60;
  int age = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : femaleCardColor,
                    cardChild: CardIcon(
                        cardIconInd: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardColor: selectedGender == Gender.female
                          ? kActiveCardColor
                          : femaleCardColor,
                      cardChild: CardIcon(
                          cardIconInd: FontAwesomeIcons.venus,
                          label: "FEMALE")),
                ),
              ],
            ),
          ),
          // Height part
          Expanded(
              child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "cm",
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: kMyRedColor,
                            overlayColor: Color(0x29EB1555),
                            thumbColor: kMyRedColor,
                            inactiveTrackColor: Color(0xFF8D8E98),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 210,
                            onChanged: (double newHeight) {
                              setState(() {
                                height = newHeight.round();
                              });
                            },
                          ))
                    ],
                  ),
                  cardColor: kCardColour)),
          Expanded(
            child: Row(
              children: [
                //Weight Part
                Expanded(
                    child: ReusableCard(
                  cardColor: kCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonContent(
                              onPressButton: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              buttonSymbol: FontAwesomeIcons.plus),
                          SizedBox(
                            width: 10,
                          ),
                          ButtonContent(
                              onPressButton: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              buttonSymbol: FontAwesomeIcons.minus)
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonContent(
                                    onPressButton: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    buttonSymbol: FontAwesomeIcons.plus),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonContent(
                                    onPressButton: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    buttonSymbol: FontAwesomeIcons.minus)
                              ],
                            )
                          ],
                        ),
                        cardColor: kCardColour))
              ],
            ),
          ),
          BottomButton(
              onTapBottom: () {
                Calculator cal = Calculator(weight: weight, height: height);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmi: cal.getBMI(),
                              comments: cal.getComments(),
                              color: cal.getColorofResult(),
                               result: cal.getResult(),

                            )));
              },
              bottomText: "CALCULATE")
        ],
      ),
    );
  }
}
