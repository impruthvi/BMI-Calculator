import 'package:flutter/material.dart';
const laletaxtStyle = TextStyle(
    fontSize: 18.0,color: Color(0xff8d8e98)
);

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
        Text(lable,style:laletaxtStyle)

      ],
    );
  }
}
