import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class Bottombutton extends StatelessWidget {
  final Function ontap;
  final String titleb;
  Bottombutton({@required this.ontap, @required this.titleb});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: bottomcontclr,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomcontheight,
        child: Center(
          child: Text(
            titleb,
            style: klargebuttxt,
          ),
        ),
      ),
    );
  }
}
