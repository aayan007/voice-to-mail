import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({this.icons, this.text});

  final Icon icons;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icons,
              SizedBox(
                height: 30.0,
              ),
              text,
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        gradient: LinearGradient(
          colors: [Color(0xff604cd2), Color(0xff7d73ee)],
        ),
      ),
    );
  }
}
