import 'package:flutter/material.dart';
import 'dart:math';
 class Calculator{
   Calculator({this.weight, this.height});
   final int height;
   final int weight;
   double _bmi;


   String getBMI(){
     _bmi=weight/pow(height/100, 2);
     return _bmi.toStringAsFixed(1);
   }
   String getResult(){
     if(_bmi>=25)
       return "OVERWEIGHT";
     else if(_bmi<=18.5)
       return "UNDERWEIGHT";
     else
       return "NORMAL";
   }
   String getComments(){
     if(_bmi>=25)
       return "You are too heavier, try to hit gym or do Cardio and eat less. ";
     else if(_bmi<=18.5)
       return "You are too light, eat something, mostly prefer food on high carbs and calories";
     else
       return "Whoo!You are Normal , Great Work, Keep it up and maintain the same pace";
   }
   Color getColorofResult(){
     if(_bmi>=25)
       return Colors.red;
     else if(_bmi<=18.5)
       return Colors.red;
     else
       return Color(0xFF24D876);
   }

 }