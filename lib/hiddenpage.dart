import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter/cupertino.dart';
import 'ReuseableCard.dart';

class hiddenpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ReuseableCode(
                    colour: kactivecardcolor,
                    cardicons: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                     Text('This is Ideal BMI',
                       style: fNormalfont,
                     ),
                     SizedBox(
                       height: 50,
                     ),
                     Text('Yay!You have unlocked the hidden feature.',
                     style: fOutputString,textAlign: TextAlign.center,
                     )
                   ],
                 ),
                 ),
            )
              ],
            ),
          ),
    );
  }
}
