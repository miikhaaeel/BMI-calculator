import 'package:flutter/material.dart';

import 'constants.dart';


class BottomContainer extends StatelessWidget {
  final String? text;
  const BottomContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text!.toUpperCase(),
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      height: kBottomContainerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBottomContainerColour,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }
}
