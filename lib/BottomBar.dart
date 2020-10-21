import 'package:flutter/material.dart';
import 'constants.dart';

class BottomBar extends StatelessWidget {
  BottomBar({this.text,this.ontap});

  final String text;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(child: Text(text,style: kfontBottomBar,)),
        height: kheightOfBottomBar,
        color: kcolorOfBottomBlock,
        width: double.infinity,
      ),
    );
  }
}
