import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // Assuming height is in cm
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == null) calculateBMI();
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  TextStyle getColor() {
    if (_bmi == null) calculateBMI();
    if (_bmi! >= 25) {
      return kResultTextStyleOverweight;
    } else if (_bmi! > 18.5) {
      return kResultTextStyleNormal;
    } else {
      return kResultTextStyleUnderweight;
    }
  }

  String getInterpretation() {
    if (_bmi == null) calculateBMI();
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. To improve it, exercise and proper diet are necessary.';
    } else if (_bmi! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You should consider increasing the amount of food you consume throughout the day.';
    }
  }
}
