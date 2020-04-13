import 'package:flutter/material.dart';
import '../constants.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({this.bouttomTital,this.onTap});

  final Function onTap;
  final String bouttomTital;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(bouttomTital,style: kLargeButtonTextStyle,)),
        color: kBottomContainerColor,
        width: double.infinity,
        height: KBottomContainerHight ,
        margin: EdgeInsets.only(top: 10),
        //padding: EdgeInsets.only(bottom: 10.0),
      ),
    );
  }
}