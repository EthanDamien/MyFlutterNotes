import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:juiceui/constants.dart';
import 'package:juiceui/screens/home/components/topiccard.dart';

class Upcoming_Topics extends StatelessWidget {
  const Upcoming_Topics({
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
            topic: 'Binary Tree',
            course: "Computer Science",
            state: "Overdue",
            stateId: bad,
            press: () {},
          ),
          TopicCard(
            size: size,
            topic: 'Thermodynamics',
            course: "Chemistry",
            state: "Not Started",
            stateId: neutral,
            press: () {},
          ),
          TopicCard(
            size: size,
            topic: 'Hash Table',
            course: "Computer Science",
            state: "Not Started",
            stateId: neutral,
            press: () {},
          ),
          TopicCard(
            size: size,
            topic: 'MCAT: Physics',
            course: "MCAT",
            state: "Not Started",
            stateId: neutral,
            press: () {},
          ),
        ],
      ),
    );
  }
}
