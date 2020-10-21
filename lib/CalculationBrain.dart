import 'dart:math';

class CalculationBrain {
  CalculationBrain({this.height,this.weight});
  int height;
  int weight;
  double _bmi;

  String calculateBMI(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String stringResult(){
    if(_bmi>=24.5){
      return 'Overweight';
    }else if(_bmi>=18.6){
      return 'Normal';
    }
    else{
      return 'Ounderweight';
    }
  }
  String feedback(){
    if(_bmi>=25.5){
      return 'your BMI result is high,keep your diet tight and excersice';
    }else if(_bmi>=18.6){
      return 'Your BMI result is normal,keep your diet the same';
    }
    else{
      return 'Your BMI result is quite low,you should ear more!';
    }
  }
}