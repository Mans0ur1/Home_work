import 'package:flutter/material.dart';
import 'package:section13_homework/models/user.dart';
import 'package:section13_homework/views/b_m_i_result_page.dart';
import 'package:section13_homework/widgets/age_and_weight_section.dart';
import 'package:section13_homework/widgets/calculate_button.dart';
import 'package:section13_homework/widgets/gander_section.dart';
import 'package:section13_homework/widgets/height_container.dart';

class BMICalculatorHome extends StatefulWidget {
  const BMICalculatorHome({super.key});

  @override
  State<BMICalculatorHome> createState() => _BMICalculatorHomeState();
}

class _BMICalculatorHomeState extends State<BMICalculatorHome> {
  User defaultUser = User(
    gender: Gender.male,
    height: 160,
    weight: 50,
    age: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04061D),
      appBar: AppBar(
        backgroundColor: Color(0xff04061D),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white, fontWeight: .bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GenderSection(gender: defaultUser.gender),
            HeightContainer(
              height: defaultUser.height,
              onChanged: (newHeight) {
                setState(() {
                  defaultUser = User(
                    gender: defaultUser.gender,
                    height: newHeight,
                    weight: defaultUser.weight,
                    age: defaultUser.age,
                  );
                });
              },
            ),
            AgeAndWeightSection(
              weight: defaultUser.weight,
              age: defaultUser.age,
              onWeightIncrement: () {
                setState(() {
                  defaultUser = User(
                    gender: defaultUser.gender,
                    height: defaultUser.height,
                    weight: defaultUser.weight + 1,
                    age: defaultUser.age,
                  );
                });
              },
              onWeightDecrement: () {
                setState(() {
                  defaultUser = User(
                    gender: defaultUser.gender,
                    height: defaultUser.height,
                    weight: defaultUser.weight - 1,
                    age: defaultUser.age,
                  );
                });
              },
              onAgeIncrement: () {
                setState(() {
                  defaultUser = User(
                    gender: defaultUser.gender,
                    height: defaultUser.height,
                    weight: defaultUser.weight,
                    age: defaultUser.age + 1,
                  );
                });
              },
              onAgeDecrement: () {
                setState(() {
                  defaultUser = User(
                    gender: defaultUser.gender,
                    height: defaultUser.height,
                    weight: defaultUser.weight,
                    age: defaultUser.age - 1,
                  );
                });
              },
            ),
            CalculateButton(
              onTap: () {
                double bmi =
                    defaultUser.weight /
                    ((defaultUser.height / 100) * (defaultUser.height / 100));

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultPage(bmi: bmi),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
