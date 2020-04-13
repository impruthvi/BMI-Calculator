import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icone,@required this.onPrassed});
  final IconData icone;
  final Function onPrassed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icone),
      elevation: 6.0,
      onPressed: onPrassed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),


    );
  }
}

