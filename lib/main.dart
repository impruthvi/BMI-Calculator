import 'package:flutter/material.dart';
import 'screen/inpute_page.dart';

void main() => runApp(BMICalculator());

class   BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor:Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21)
      ),
      home: InputPage(),
    );
  }
}


