import 'package:flutter/material.dart';
const activeColor=Color(0xFF1d1E33);
const inactivecolor=Color(0xFF111328);
const bottomheight=80.0;
const bottomcolor=Color(0xFFEB1555);
class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap,this.title});
  final title;
  final  onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        child: Center(
          child: Text(title,style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600
          ),),
        ),
        color: bottomcolor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomheight,

      ),
    );
  }
}
