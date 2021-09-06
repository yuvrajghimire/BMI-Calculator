import 'package:flutter/material.dart';

import '../constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({
    required this.onTap,
    required this.buttonText,
  });
  final String buttonText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kCalculateTextStyle,
          ),
        ),
      ),
    );
  }
}
