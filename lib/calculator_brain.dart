import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  CalculatorBrain({required this.height, required this.weight});

  late double _bmiResult;

  String calculateBMI() {
    _bmiResult = weight / pow(height / 100, 2);
    return _bmiResult.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmiResult >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmiResult > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getResultInterpretation() {
    if (_bmiResult >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmiResult > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a higher than normal body weight. Try to eat more';
    }
  }
}
