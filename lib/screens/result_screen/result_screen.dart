import 'package:bmi_app/value_provider.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int weight = ValueProvider().getWeight();
    int height = ValueProvider().getHeight();
    double heightInMeter = height / 100;
    double heightSquare = heightInMeter * heightInMeter;
    final bMI = weight / heightSquare;
    return SafeArea(
      child: Scaffold(
        body: Text("Your BMI ${bMI.toStringAsFixed(1)}"),
      ),
    );
  }
}
