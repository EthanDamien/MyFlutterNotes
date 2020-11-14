import 'package:flutter/material.dart';
import 'package:juiceui/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'Classification of Matter',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black,
                  fontFamily: "Juiceness",
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ],
    );
  }
}
