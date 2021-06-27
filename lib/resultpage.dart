import 'package:bmicalci/reusablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'inputpage.dart';
import 'Bottombtn.dart';
import 'calcibrain.dart';
class Result extends StatelessWidget {
  Result({required this.bmiResult,required this.resulttext,required this.interpolation});
  final String bmiResult;
  final String resulttext;
  final String interpolation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar
          : AppBar(

        title: Text('BMI CALCULATOR'),

      ),body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          
          child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Your result',style: TextStyle(
              fontSize: 50.0
            ),

            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Reusablecard(
            colour: Color(0xFF1d1E33),
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                Text(resulttext,style: TextStyle(fontSize: 30,
                color: Colors.green),
                textAlign: TextAlign.center,),
    Text(bmiResult,style: TextStyle(fontSize:70.0),
        textAlign: TextAlign.center),
                Text(interpolation,style: TextStyle(fontSize: 25.0),
                    textAlign: TextAlign.center),

              ],
            ),


          )
        ),
        BottomButton(onTap: ()
        {
          Navigator.pop(context);
        },
        title: 'Re-Calculate'),
      ],
    ),
    );
  }
}
