import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

const labeltxtsize = 80.0;

class Gender extends StatelessWidget {
  Gender({@required this.icn, @required this.txt});
  final IconData icn;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icn,
          size: labeltxtsize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          style: labeltxtstyle,
        ),
      ],
    );
  }
}
