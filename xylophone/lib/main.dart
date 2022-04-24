
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone/xyloButton.dart';


void main() {
  runApp(XylophoneApp());
}


class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        top: true,
        child: Scaffold(
          appBar: AppBar(
            elevation: 50,
              backgroundColor: Colors.black,
              title: Center(
                child: Text("XYLOPHONE"),

              ),
            ),

          body: SafeArea(
            child: Container(

              child: Column(
                children: [
                 XyloButton(buttonColor: Colors.red ,buttonSound: 'assets_note1.wav'),
                  XyloButton(buttonColor: Colors.blue, buttonSound: 'assets_note2.wav'),
                  XyloButton(buttonColor: Colors.green, buttonSound: 'assets_note3.wav'),
                  XyloButton(buttonColor: Colors.yellow, buttonSound: 'assets_note4.wav'),
                  XyloButton(buttonColor: Colors.pink, buttonSound: 'assets_note5.wav'),
                  XyloButton(buttonColor: Colors.orange, buttonSound: 'assets_note6.wav'),
                  XyloButton(buttonColor: Colors.purple, buttonSound: 'assets_note7.wav'),
              ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}


