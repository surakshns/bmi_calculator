import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({@required this.colour, this.cardChild, this.func});
  final Color colour;
  final Widget cardChild;
  final Function func;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
