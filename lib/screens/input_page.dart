import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

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
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        // ignore: unnecessary_statements
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    child: IconContent(
                      gender: Icons.male,
                      icontext: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        // ignore: unnecessary_statements
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
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
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kLabelTextStyle2,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                              activeTrackColor: Colors.lightGreen[300],
                              thumbColor: Colors.red,
                              overlayColor: Color(0x29EB1555)
                              ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            inactiveColor: Colors.white10,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    color: kInactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColour,
                  ),
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
