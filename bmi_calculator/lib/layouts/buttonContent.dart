import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonContent extends StatelessWidget {
  ButtonContent({@required this.onPressButton, @required this.buttonSymbol});

  final Function onPressButton;
  final IconData buttonSymbol;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Color(0xFF4C4f5E),
        shape: CircleBorder(),
        onPressed: onPressButton,
        constraints: BoxConstraints.tightFor(
          height: 46,
          width: 46,
        ),
        child: Icon(
          buttonSymbol,
          color: Colors.white,
        ));
  }
}
