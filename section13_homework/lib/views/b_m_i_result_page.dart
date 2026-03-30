import 'package:flutter/material.dart';

class BMIResultPage extends StatelessWidget {
  final double bmi;

  const BMIResultPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    String bmiString = bmi.toStringAsFixed(1);
    String category;

    if (bmi < 18.5) {
      category = 'Underweight';
    } else if (bmi < 25) {
      category = 'Normal';
    } else if (bmi < 30) {
      category = 'Overweight';
    } else {
      category = 'Obese';
    }

    return Scaffold(
      backgroundColor: Color(0xff04061D),
      appBar: AppBar(
        backgroundColor: Color(0xff04061D),
        title: const Text('BMI Result', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is:',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            SizedBox(height: 20),
            Text(
              bmiString,
              style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              category,
              style: TextStyle(color: Colors.orange, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}