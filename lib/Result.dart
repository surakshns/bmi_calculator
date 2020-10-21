import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'ReuseableCard.dart';
import 'BottomBar.dart';

class Result extends StatelessWidget {
  Result({@required this.bMIvalue,@required this.stringResult,@required this.feedback});
  String bMIvalue;
  String stringResult;
  String feedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Center(
        child: Text(
          'Your Result',
          style: fresultHeading,
        ),
      ),
      Expanded(
        flex: 5,
        child: ReuseableCode(
            colour: kactivecardcolor,
          cardicons: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(stringResult,style: fNormalfont),
                Text(bMIvalue,style: fOutputNo),
                Text(feedback,style: fOutputString,textAlign: TextAlign.center,),
              ],
            ),
          ),
        ),
      ),
      BottomBar(
          text: 'Re-Calculate Your BMI',
          ontap:(){
            Navigator.pop(context);
          })
    ],
    )
    );
  }
}

