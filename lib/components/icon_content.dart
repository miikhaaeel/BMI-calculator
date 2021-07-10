import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData gender;
  final String icontext;

  IconContent({required this.gender, required this.icontext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 100,
          color: Colors.lightGreen,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          icontext,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
