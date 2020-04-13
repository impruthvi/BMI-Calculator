

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/BOUTTOM_BUTTON.dart';
import '../components/round_icon_button.dart';
import 'package:bmicalculator/components/CalculatorLogic.dart';


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
  int hight = 180;
  int weight = 60;
  int age = 19;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMICalculator")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                onPrase: (){
                  setState(() {
                    selectedgender = Gender.male;
                  });
                },
                colour: selectedgender == Gender.male ? kActiveCardColor : kInactiveCardColor ,

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
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: IconContain(
                  icon: FontAwesomeIcons.venus,
                  lable: "FEMALE"
                ),
              ))
            ],
          )
          ),
          Expanded(child: ReusableCard(
              colour: kActiveCardColor,

            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "HIGHT",style: kLabletaxtStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                        hight.toString(),
                        style: kNumberTextStyle,
                    ),
                    Text("cm",style: kLabletaxtStyle,)
                  ],
                ),
                SliderTheme(

                  data: SliderTheme.of(context).copyWith(
                    inactiveTickMarkColor: Color(0xff8d8e98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xffeb1555),
                    overlayColor: Color(0x29eb1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30)

                  ),

                  child: Slider(
                    value: hight.toDouble(),
                    min: 120.0,
                    max: 220.0,



                    onChanged: (double newValue){
                      setState(() {
                        hight = newValue.round();
                      });

                    },

                  ),
                )
              ],
            ),
          )

            ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("WEIGHT",style: kLabletaxtStyle,),
                    Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       RoundIconButton(
                         onPrassed: (){
                           setState(() {
                             weight--;
                           });
                         },
                         icone: FontAwesomeIcons.minus,
                       ),
                        SizedBox(
                          width: 10.0,
                        ),
                       RoundIconButton(
                         onPrassed: (){
                           setState(() {
                             weight++;
                           });
                         },
                         icone: FontAwesomeIcons.plus,
                       )
                      ],
                    )


                  ],
                ),
              ),


              ),
              Expanded(
                child: ReusableCard(
                    colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("AGE",style: kLabletaxtStyle,),
                      Text(age.toString(),style: kNumberTextStyle,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            onPrassed: (){
                              setState(() {
                                age--;
                              });
                            },
                            icone: FontAwesomeIcons.minus,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            onPrassed: (){
                              setState(() {
                                age++;
                              });
                            },
                            icone: FontAwesomeIcons.plus,
                          )
                        ],

                      )

                    ],
                  ),
                )
                ,)

            ],
          )),
          Bottombutton(
            bouttomTital: 'CALCULATE',

            onTap: (){
              CalculatorLogic calc =
              new CalculatorLogic(height: hight, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                  bmiResult: calc.calculateBMI(),
                  interpretation: calc.getInterpretation(),
                  resultText: calc.getResult()
              )));
            },
          ),


        ],
      )


    );
  }
}


