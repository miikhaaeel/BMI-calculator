import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? onPressed;
  RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 7,
      constraints: BoxConstraints.tight(
        Size.fromRadius(23),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4E4F5C),
    );
  }
}
