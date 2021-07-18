import 'package:bmi_calculator/components/bottom_container.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String getResult;
  final String resultText;
  final String resultInterpretation;

  ResultPage(
      {required this.resultText,
      required this.getResult,
      required this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Your Result',
                    style: kLabelTextStyle2,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kInactiveCardColour,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      getResult,
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      resultInterpretation,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: BottomContainer(
                text: 'Re-calculate',
              ),
            )
          ],
        ));
  }
}
