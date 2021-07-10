import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
