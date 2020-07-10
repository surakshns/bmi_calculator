import 'package:bmi/components/bottmbuttn.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/components/icon_content.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:bmi/components/roundwidget.dart';
import 'package:bmi/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/calculator.dart';

enum Genz { male, female } //named value

class Inputpage extends StatefulWidget {
  Inputpage({Key key}) : super(key: key);

  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Genz selgend;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusable(
                      colour: selgend == Genz.male
                          ? activecardclr
                          : inactivecardclr,
                      cardChild: Gender(
                        icn: FontAwesomeIcons.mars,
                        txt: 'MALE',
                      ),
                      func: () {
                        setState(() {
                          selgend = Genz.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Reusable(
                      colour: selgend == Genz.female
                          ? activecardclr
                          : inactivecardclr,
                      cardChild: Gender(
                        icn: FontAwesomeIcons.venus,
                        txt: 'FEMALE',
                      ),
                      func: () {
                        setState(() {
                          selgend = Genz.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Reusable(
                colour: activecardclr,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: labeltxtstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kslidertxt,
                        ),
                        Text(
                          'cm',
                          style: labeltxtstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0XFF8D8E98),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusable(
                      colour: activecardclr,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: labeltxtstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kslidertxt,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                funn: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                funn: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reusable(
                      colour: activecardclr,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: labeltxtstyle,
                          ),
                          Text(
                            age.toString(),
                            style: kslidertxt,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                funn: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                funn: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Bottombutton(
              ontap: () {
                Calculate calc = Calculate(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiresult: calc.calculatebmi(),
                      resultxt: calc.getresult(),
                      descr: calc.getinterpretation(),
                    ),
                  ),
                );
              },
              titleb: 'CALCULATE',
            ),
          ],
        ));
  }
}
