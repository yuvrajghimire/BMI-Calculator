import 'package:flutter/material.dart';
import '../constants.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget({required this.gender, required this.iconName});

  final String gender;
  final IconData iconName;
  static double iconSize = 80;
  static const iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: 15),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
