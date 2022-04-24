import 'package:bmi_calculator/screens/inputPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI CALCULATOR",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        primaryColor: Color(0XFF0A0F31)
      ),
      home: InputPage(),
    );
  }
}



