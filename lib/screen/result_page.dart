import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:bmicalculator/components/BOUTTOM_BUTTON.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage(
      {@required this.bmiResult,
        @required this.interpretation,
        @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Center(child: Text("Your Result",style: kTiatalTextStyle,))
          ),
          Expanded(
              flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Text(bmiResult,style: kBMItTextStyle,),
                  Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,)
                ],
              ),
            ),


          ),
          Bottombutton(bouttomTital: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },)

        ],
      )
    );
  }
}
