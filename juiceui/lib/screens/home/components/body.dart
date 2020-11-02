import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juiceui/constants.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:juiceui/screens/home/components/headerwithsearchbox.dart';
import 'package:juiceui/screens/home/components/recommended.dart';
import 'package:juiceui/screens/home/components/titlewithbtn.dart';
import 'package:juiceui/screens/home/components/upcoming.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //provides total height and width of screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderwithSearchBox(size: size),
          TitlewithBtn(text: "Recommended Topics", pressBtn: () {}),
          //cards
          Recommended_Topics(size: size),
          TitlewithBtn(text: "Upcoming Topics", pressBtn: () {}),
          Upcoming_Topics(size: size),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
