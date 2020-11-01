import 'package:flutter/material.dart';
import 'package:juiceui/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //provides total height and width of screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          //cover 20% of the height
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kPrimaryColor.withOpacity(0.23)),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: kPrimaryColor),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
