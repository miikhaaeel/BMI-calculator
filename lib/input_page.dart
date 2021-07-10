import 'package:flutter/material.dart';

import 'components/reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: Color(0xFF1D1E34),
                ),
                ReusableCard(
                  color: Color(0xFF1D1E34),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: Color(0xFF1D1E34),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: Color(0xFF1D1E34),
                ),
                ReusableCard(
                  color: Color(0xFF1D1E34),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
