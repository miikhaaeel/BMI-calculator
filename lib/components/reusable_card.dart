import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  ReusableCard({required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: child,
          decoration: BoxDecoration(
            
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
