

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';


const bottomContainerHight  = 80.0;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);
const bottomContainerColor = Color(0xffeb1555);
enum Gender {
  male,
  female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedgender;


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
              Expanded(child: ReusableCard(
                onPrase: (){
                  setState(() {
                    selectedgender = Gender.male;
                  });
                },
                colour: selectedgender == Gender.male ? activeCardColor : inactiveCardColor ,

                cardChild: IconContain(icon: FontAwesomeIcons.mars,lable: "MALE",),


              )
              ),
              Expanded(child: ReusableCard(
                onPrase: (){
                  setState(() {
                    selectedgender = Gender.female;
                  });
                },
                colour: selectedgender == Gender.female
                    ? activeCardColor
                    : inactiveCardColor,
                cardChild: IconContain(
                  icon: FontAwesomeIcons.venus,
                  lable: "FEMALE"
                ),
              ))
            ],
          )
          ),
          Expanded(child: ReusableCard(colour: activeCardColor)),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColor)),
              Expanded(child: ReusableCard(colour:activeCardColor))

            ],
          )),
          Container(
             color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHight ,
            margin: EdgeInsets.only(top: 10),
          ),


        ],
      )


    );
  }
}


