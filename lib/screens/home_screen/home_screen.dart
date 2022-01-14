import 'package:bmi_app/screens/home_screen/widgets/age_selector.dart';
import 'package:bmi_app/screens/home_screen/widgets/height_selector.dart';
import 'package:bmi_app/screens/home_screen/widgets/weight_selector.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AgeSelector(),
              WeightSelector(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              HeightSelector(),
            ],
          ),
          Material(
            color: Colors.blue[900],
            shape: CircleBorder(),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.white,
              iconSize: 40,
            ),
          )
        ],
      ),
    );
  }
}
