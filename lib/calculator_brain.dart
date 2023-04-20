import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight) {}
  final int height;
  final int weight;
  double bmi = 0;
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18) {
      return 'You have a normal bdy weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a little bit more.';
    }
  }
}
