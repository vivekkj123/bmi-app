import 'package:bmi_app/value_provider.dart';
import 'package:flutter/material.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _globalAge = ValueProvider.age;
    ValueNotifier _age = ValueNotifier(_globalAge);
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      shadowColor: Colors.black38,
      child: SizedBox(
        height: 150,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Age",
              style: TextStyle(fontSize: 20),
            ),
            ValueListenableBuilder(
              valueListenable: _age,
              builder: (ctx, newValue, _) {
                return Text(
                  newValue.toString(),
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _age.value = _age.value - 1;
                    ValueProvider().setAge(_age.value);
                  },
                  child: const Icon(Icons.remove),
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      primary: Colors.white,
                      onPrimary: const Color(0xff566ee7)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _age.value = _age.value + 1;
                    ValueProvider().setAge(_age.value);
                  },
                  child: const Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      primary: Colors.white,
                      onPrimary: const Color(0xff566ee7)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
