import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:juiceui/constants.dart';

class TitlewithBtn extends StatelessWidget {
  const TitlewithBtn({
    Key key,
    this.text,
    this.pressBtn,
  }) : super(key: key);

  final String text;
  final Function pressBtn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: kDefaultPadding, left: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithUnderline(text: text),
          //Spaces before overflow
          Spacer(),
          FlatButton(
            onPressed: pressBtn,
            child: Text("More",
                style: TextStyle(color: Colors.white, fontFamily: "Juiceness")),
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class TitleWithUnderline extends StatelessWidget {
  const TitleWithUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: "Juiceness",
                color: kPrimaryColor2,
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(0),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
