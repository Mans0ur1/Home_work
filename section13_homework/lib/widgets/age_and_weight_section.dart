import 'package:flutter/material.dart';
import 'package:section13_homework/widgets/weight_or_age_custom_container.dart';

class AgeAndWeightSection extends StatelessWidget {
  final int weight;
  final int age;
  final Function() onWeightIncrement;
  final Function() onWeightDecrement;
  final Function() onAgeIncrement;
  final Function() onAgeDecrement;

  const AgeAndWeightSection({
    super.key,
    required this.weight,
    required this.age,
    required this.onWeightIncrement,
    required this.onWeightDecrement,
    required this.onAgeIncrement,
    required this.onAgeDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: WeightOrAgeCustomContainer(
              title: 'WEIGHT',
              value: weight,
              onIncrement: onWeightIncrement,
              onDecrement: onWeightDecrement,
            ),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: WeightOrAgeCustomContainer(
              title: 'AGE',
              value: age,
              onIncrement: onAgeIncrement,
              onDecrement: onAgeDecrement,
            ),
          ),
        ],
      ),
    );
  }
}