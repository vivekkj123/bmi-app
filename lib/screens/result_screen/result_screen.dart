import 'package:bmi_app/bmi_function.dart';
import 'package:bmi_app/value_provider.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int weight = ValueProvider().getWeight();
    int height = ValueProvider().getHeight();
    double bmi = findBMI(height, weight);
    final response = getResponse(bmi);
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        backgroundColor: const Color(0Xffffffff),
        elevation: 0.3,
        centerTitle: true,
        toolbarHeight: 75,
      ),
      // body: Text("Your BMI ${bmi.toStringAsFixed(2)} ${response}"),
      body: Center(
          child: Container(
        // color: Colors.yellow,
        height: 500,
        width: 300,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20.0, // extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  bmi.toStringAsFixed(2).split(".")[0],
                  style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(85, 87, 105, 1)),
                ),
                Text(
                  "." + bmi.toStringAsFixed(2).split(".")[1],
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(85, 87, 105, 1)),
                )
              ]),
              Text(
                response,
                style: TextStyle(
                    color: Colors.greenAccent[400],
                    fontWeight: FontWeight.w800,
                    fontSize: 25),
              ),
              const Text(
                "Normal BMI range is 18.5 kg/m\u00B2 - 24.9 kg/m\u00B2",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(85, 87, 105, 1)),
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Share Results"))
            ],
          ),
        ),
      )),
    );
  }
}
