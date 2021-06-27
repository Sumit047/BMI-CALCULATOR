import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'iconadder.dart';
import 'Bottombtn.dart';
import 'resultpage.dart';
import 'calcibrain.dart';
class BMICalci extends StatefulWidget {
  @override
  _BMICalciState createState() => _BMICalciState();
}
enum gender{
  male,
female,
  hi
}
const activeColor=Color(0xFF1d1E33);
const inactivecolor=Color(0xFF111328);
const bottomheight=80.0;
const bottomcolor=Color(0xFFEB1555);
class _BMICalciState extends State<BMICalci> {
  // Color malecardcolor=activeColor;
  // Color femalecardcolor=activeColor;

  // void changecolor(gender selectedgender){
  //   if(selectedgender==gender.male)
  //   {
  //     if(malecardcolor==activeColor){
  //       malecardcolor=inactivecolor;
  //       femalecardcolor=activeColor;
  //     }
  //     else{
  //       malecardcolor=activeColor;
  //     }
  //   }
  //   if(selectedgender==gender.female)
  //   {
  //     if(femalecardcolor==activeColor){
  //       femalecardcolor=inactivecolor;
  //       malecardcolor=activeColor;
  //     }
  //     else{
  //       femalecardcolor=activeColor;
  //     }
  //   }
  //
  // }
  int height=180;
  int width=60;
  int age=18;
  gender selectedgender=gender.hi;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR',style: TextStyle(
            fontSize: 24,
            color: Colors.orange.shade50,
        ),
        ),
        ),
      ),

      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: Reusablecard(
                colour: selectedgender==gender.male? inactivecolor: activeColor,
                cardchild: Iconadder(FontAwesomeIcons.mars,'MALE'),
                onpress:(){
                  setState(() {
                    selectedgender=gender.male;
                  });

                },
              ),
              ),
              Expanded(child: Reusablecard(
                colour: selectedgender==gender.female?inactivecolor:activeColor,
                cardchild: Iconadder(FontAwesomeIcons.venus,'FEMALE'),
    onpress:(){
    setState(() {
    selectedgender=gender.female;
    });
                }
              ),
              ),
            ],
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: Reusablecard(
                  colour: activeColor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Height',style: TextStyle(
        fontSize: 18.0,
      ),
      ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(height.toString(),style: TextStyle(
        fontSize: 50.0,
        color: Colors.white,
        fontWeight: FontWeight.w800
      ),),
    Text('cm'),

    ],
    ),
      SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          thumbColor: Color(0xFFEB1555),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          overlayColor: Color(0x29EB1555),

        ),
        child: Slider(value: height.toDouble(),
            max:220,
            min:120,

            onChanged: (double newvalue){
          setState(() {
            height=newvalue.round();
          });
        }),
      )
    ],
    ),
                  onpress:(){
                    setState(() {
                      selectedgender=gender.female;
                    });}


              ),
              ),

            ],
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: Reusablecard(
                colour: activeColor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Weight',
      style: TextStyle(
        fontSize: 18.0,
      ),),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(width.toString(),
    style: TextStyle(
    fontSize: 50.0,
      fontWeight: FontWeight.w800
    ),
    ),

    ],
    ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          RoundIconButton(icon: FontAwesomeIcons.minus,
            onPressed: (){
              setState(() {
                width--;
              });
            },),
          SizedBox(
            width: 15.0,
          ),
          RoundIconButton(icon: FontAwesomeIcons.plus,
          onPressed: (){
            setState(() {
              width++;
            });
          },),


        ],
      )
    ],
    ),
                  onpress:(){
                    setState(() {
                      selectedgender=gender.female;
                    });}

              ),
              ),
              Expanded(child: Reusablecard(
                colour: activeColor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Age',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(age.toString(),
                            style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w800
                            ),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            },),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },),


                        ],
                      )
                    ],
                  ),
                  onpress:(){
                    setState(() {
                      selectedgender=gender.female;
                    });}

              ),
              ),
            ],
          ),
          ),
          BottomButton(onTap: ()
    {
      CalciBrain calc=CalciBrain(height: height,weight: width);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(
bmiResult: calc.calculate(),
      resulttext: calc.getresult(),
      interpolation: calc.interpretation(),

    ),
    ),
    );
    },
    title: 'Calculate'),
        ],
      ),

    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon,required this.onPressed});
  final IconData icon;
  final  onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: Colors.white,),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,

    );
  }
}

