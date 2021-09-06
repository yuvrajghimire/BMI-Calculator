import 'package:bmi_calculator/calculate_bmi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultFunctions {
  Color resultColor() {
    var bmi = double.parse(CalculateBMI().calculateBMI());
    if (bmi >= 25) {
      return Color(0xFFf30000);
    } else if (bmi >= 18.5) {
      return Color(0xFF5cfe00);
    } else {
      return Color(0xFFfffe00);
    }
  }

  IconData resultIcon() {
    var bmi = double.parse(CalculateBMI().calculateBMI());
    if (bmi >= 25) {
      return FontAwesomeIcons.sadTear;
    } else if (bmi >= 18.5) {
      return FontAwesomeIcons.smile;
    } else {
      return FontAwesomeIcons.sadTear;
    }
  }
}
