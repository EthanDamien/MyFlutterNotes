import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:juiceui/constants.dart';

class HeaderwithSearchBox extends StatelessWidget {
  const HeaderwithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      //cover 20% of the height
      height: size.height * 0.2,
      child: Stack(
        //Stack of elements, top to bottom
        children: <Widget>[
          Container(
            //Soft Box
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hey Study Buddy!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                        fontFamily: "Juiceness",
                        fontWeight: FontWeight.w700,
                      ),
                ),
                //Spacer(),
                //Image.asset("assets/images/logo.png"),
              ],
            ),
          ),
          //Searchbar
          Positioned(
            //Position it on the bottom and the middle
            bottom: 0,
            left: 0,
            right: 0,
            //Searchbar
            child: Container(
              //Searchbar Alignment Vertical
              alignment: Alignment.center,
              //Margin and padding all at 20
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.only(left: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                //Searchbar color
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  //searchbar hovering effect
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 30,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
              ),
              //input area
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      style: TextStyle(fontFamily: 'Juiceness'),
                      decoration: InputDecoration(
                        hintText: "Search your topics",
                        hintStyle: TextStyle(
                            color: kPrimaryColor, fontFamily: 'Juiceness'),

                        //get rid of text decoration
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(CupertinoIcons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
