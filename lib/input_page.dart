import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'components/icon_content.dart';
import 'components/reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColour;
  Color femaleCardColor = kInactiveCardColour;

  void updateColor() {
    
  }
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
                  color: maleCardColor,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = kActiveCardColour;
                        femaleCardColor = kInactiveCardColour;
                      });
                    },
                    child: IconContent(
                      gender: Icons.male,
                      icontext: 'Male',
                    ),
                  ),
                ),
                ReusableCard(
                  color: femaleCardColor,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleCardColor = kActiveCardColour;
                        maleCardColor = kInactiveCardColour;
                      });
                    },
                    child: IconContent(
                      icontext: 'Female',
                      gender: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  child: Column(),
                  color: kInactiveCardColour,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: kInactiveCardColour,
                ),
                ReusableCard(
                  color: kInactiveCardColour,
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kBottomContainerColour,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
          )
        ],
      ),
    );
  }
}
