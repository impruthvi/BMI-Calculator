import 'package:flutter/material.dart';
import '../constants.dart';
class IconContain extends StatelessWidget {

  IconContain({this.lable,this.icon});

  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(lable,style:kLabletaxtStyle)

      ],
    );
  }
}
