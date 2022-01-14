import 'package:bmi_app/value_provider.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({Key? key}) : super(key: key);

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  int currentValue = 15;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        shadowColor: Colors.black38,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Height\ncm",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              NumberPicker(
                  selectedTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                  axis: Axis.horizontal,
                  value: currentValue,
                  minValue: 10,
                  maxValue: 600,
                  onChanged: (value) {
                    ValueProvider().setHeight(value);
                    setState(() => currentValue = value);
                  }),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
