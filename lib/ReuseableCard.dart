import 'package:flutter/material.dart';

class ReuseableCode extends StatelessWidget {
  ReuseableCode({@required this.colour,this.cardicons,this.onPress});

  final Color colour;
  final Widget cardicons;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardicons,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
