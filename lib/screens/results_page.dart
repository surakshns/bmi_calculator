import 'package:bmi/components/bottmbuttn.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiresult,
      @required this.descr,
      @required this.resultxt});
  final String bmiresult;
  final String resultxt;
  final String descr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kresultmaintxt,
              ),
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable(
              colour: activecardclr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultxt.toUpperCase(),
                    style: kresulttxt,
                  ),
                  Text(
                    bmiresult,
                    style: kbmitxt,
                  ),
                  Text(
                    descr,
                    style: kdesxt,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Bottombutton(
            ontap: () {
              Navigator.pop(context);
            },
            titleb: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
