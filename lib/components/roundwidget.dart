import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function funn;
  const RoundIconButton({@required this.icon, @required this.funn});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: funn,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
