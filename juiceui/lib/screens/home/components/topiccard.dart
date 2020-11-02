import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:juiceui/constants.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({
    Key key,
    @required this.size,
    this.topic,
    this.course,
    this.state,
    this.press,
    this.stateId,
  }) : super(key: key);

  final Size size;
  final String topic, course, state;
  final Function press;
  final Color stateId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        width: size.width * 0.4,
        height: size.width * 0.4,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            //searchbar hovering effect
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 10,
                color: kPrimaryColor.withOpacity(0.23)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: RichText(
                softWrap: true,
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$topic\n",
                      style: TextStyle(
                        fontFamily: "Juiceness",
                        fontSize: 17,
                      ),
                    ),
                    TextSpan(
                      text: "$course\n",
                      style: TextStyle(
                          fontFamily: "Juiceness",
                          color: Colors.white.withOpacity(0.67)),
                    ),
                    TextSpan(
                      text: "$state\n",
                      style: TextStyle(
                        fontFamily: "Juiceness",
                        color: stateId,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
