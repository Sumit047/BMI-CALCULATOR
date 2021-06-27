import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard({required this.colour, required this.cardchild, this.onpress});
  final Color colour;
  final Widget cardchild;
  final onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,


        ),
      ),
    );
  }
}
