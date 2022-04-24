import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XyloButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonSound;

  XyloButton({@required this.buttonColor, @required this.buttonSound});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(onPressed: (){
        final player=AudioCache();
        player.play(buttonSound);
      },
        minWidth: MediaQuery.of(context).size.width,
      color: buttonColor,
      ),
    );
  }
}
