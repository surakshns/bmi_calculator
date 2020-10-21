import 'package:flutter/material.dart';
import 'constants.dart';

class IconAndText extends StatelessWidget {
  IconAndText({this.gendericon,this.label});

  final IconData gendericon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gendericon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: kfontstyle,
        ),
      ],
    );
  }
}
