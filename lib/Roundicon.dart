import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon,this.onpress});

  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onpress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      fillColor: Color(0x888D8E88),
    );
  }
}