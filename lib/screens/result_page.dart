import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/calculate_button.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  resultColor() {
    var bmi = double.parse(bmiResult);
    if (bmi >= 25) {
      return Color(0xFFf30000);
    } else if (bmi >= 18.5) {
      return Color(0xFF5cfe00);
    } else {
      return Color(0xFFfffe00);
    }
  }

  resultIcon() {
    var bmi = double.parse(bmiResult);
    if (bmi >= 25) {
      return FontAwesomeIcons.sadTear;
    } else if (bmi >= 18.5) {
      return FontAwesomeIcons.smile;
    } else {
      return FontAwesomeIcons.sadTear;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(resultIcon(), color: resultColor(), size: 30),
                      SizedBox(width: 20),
                      Text(
                        resultText.toUpperCase(),
                        style: TextStyle(
                          color: resultColor(),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kActiveCardColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          CalculateButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
