import 'dart:math';
double _bmi=0;

class CalciBrain {
  CalciBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  String calculate(){
     _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);


  }
  String getresult()
  {
    if(_bmi>=25)
    {
      return 'Overweight';
    }
    else if(_bmi>18.5)
      {
        return 'Normal';
      }
    else
      {
        return 'underweight';
      }
  }
  String interpretation()
  {
    if(_bmi>=25)
    {
      return 'You are overweight! Do More Exercise and eat less to keep yourself healthy! Wish you a Good Health!!!';
    }
    else if(_bmi>18.5 )
    {
      return 'You are Normal! Wish you a Good Health!!!';

    }
    else
    {
      return 'You are underweight! Eat more and do some workout to keep yourself healthy! Wish you a Good Health!!!';
    }
  }
}