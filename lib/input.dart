import 'package:bmi_calculator/hiddenpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReuseableCard.dart';
import 'Icons.dart';
import 'constants.dart';
import 'Result.dart';
import 'Roundicon.dart';
import 'BottomBar.dart';
import 'CalculationBrain.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;
  int weight = 60;
  int age = 20;
  Gender selectedgender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseableCode(
                  onPress: (){
                    setState(() {
                      selectedgender=Gender.male;
                    });
                  },
                  colour: selectedgender==Gender.male ? kactivecardcolor : kinactivecardcolor,
                  cardicons: IconAndText(
                    gendericon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCode(
                    onPress: (){
                      setState(() {
                        selectedgender=Gender.female;
                      });
                    },
                  colour: selectedgender==Gender.female ? kactivecardcolor : kinactivecardcolor,
                    cardicons: IconAndText(
                      gendericon: FontAwesomeIcons.venus,
                      label: 'Female',
                    )
                )
              ),
            ],
          )),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseableCode(
                  cardicons: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Height',
                        style: kfontstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kNumberstyle,
                          ),
                          Text(
                            'cm',
                            style: kfontstyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xff8D8E98),
                          overlayColor: Color(0x29EB1555),
                          thumbColor: Color(0xffEB1555),
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30)
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newvalue){
                              setState(() {
                                height=newvalue.toInt();
                              });
                            }),
                      )
                    ],
                  ),
                  colour: kactivecardcolor,
                )
              ),
            ],
          )),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseableCode(
                  cardicons: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Weight',
                      style: kfontstyle,
                      ),
                      Text(
                        weight.toString(),
                            style: kNumberstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                          onpress: (){
                            setState(() {
                              weight--;
                            });
                          },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(icon: Icons.add,
                            onpress: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  colour: kactivecardcolor,
                )
              ),
              Expanded(
                child: ReuseableCode(
                  colour: kactivecardcolor,
                  cardicons: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Age',
                        style: kfontstyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                            onpress: (){
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(icon: Icons.add,
                            onpress: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
            ],
          )),
          BottomBar(
            text: 'Calculate Your BMI',
            ontap:(){
              CalculationBrain calz = CalculationBrain(height: height,weight: weight);
              height==185 && weight==70 ?
                  Navigator.push(context, MaterialPageRoute(builder:
                  (context){
                    return hiddenpage();
                  })):
              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return Result(
                      bMIvalue: calz.calculateBMI(),
                      stringResult: calz.stringResult(),
                      feedback: calz.feedback(),
                    );
                  },
                  ),
              );
              },
          )
        ],
      )
    );
  }
}




