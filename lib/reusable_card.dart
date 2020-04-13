import 'package:flutter/material.dart';

const inactiveCardColor = Color(0xff111328);
const activeCardColor = Color(0xff1d1e33);
class ReusableCard extends StatelessWidget {

  ReusableCard({this.colour,this.cardChild,this.onPrase});

  final Color colour;
  final Widget cardChild;
  final Function onPrase;
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: onPrase,
      child: Container(
        
        margin:EdgeInsets.all(15.0) ,
        child: cardChild,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10.0),
          color: colour,

        ),


      ),
    );
  }
}

