import 'dart:developer';

import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMICalculator")),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: Color(0xff1d1e33),)),
              Expanded(child: ReusableCard(colour: Color(0xff1d1e33),))
            ],
          )
          ),
          Expanded(child: ReusableCard(colour: Color(0xff1d1e33))),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: Color(0xff1d1e33))),
              Expanded(child: ReusableCard(colour: Color(0xff1d1e33)))

            ],
          ))

        ],
      )


    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0) ,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff1d1e33),

      ),


    );
  }
}

