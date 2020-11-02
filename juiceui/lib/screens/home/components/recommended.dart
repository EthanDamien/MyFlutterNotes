import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:juiceui/constants.dart';
import 'package:juiceui/screens/home/components/topiccard.dart';

class Recommended_Topics extends StatelessWidget {
  const Recommended_Topics({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TopicCard(
            size: size,
            topic: 'Classification of Matter',
            course: "Chemistry",
            state: "10/29/20",
            stateId: bad,
            press: () {},
          ),
          TopicCard(
            size: size,
            topic: 'Mole Concepts',
            course: "Chemistry",
            state: "10/27/20",
            stateId: iffy,
            press: () {},
          ),
          TopicCard(
            size: size,
            topic: 'Stock Analysis',
            course: "Statistics",
            state: "10/10/20",
            stateId: good,
            press: () {},
          ),
          TopicCard(
            size: size,
            topic: 'VSEPR theory',
            course: "Chemistry",
            state: "10/27/20",
            stateId: good,
            press: () {},
          ),
        ],
      ),
    );
  }
}
