import 'package:flutter/material.dart';
import 'input.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22)
      ),
      home: InputPage(),
    );
  }
}

