import 'package:flutter/material.dart';
import 'package:section13_homework/widgets/stepper_control.dart';

class WeightOrAgeCustomContainer extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const WeightOrAgeCustomContainer({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff17172F),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 20)),
          Text(
            value.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 60,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StepperControl(icon: Icons.add, onTap: onIncrement),
              const SizedBox(width: 15),
              StepperControl(icon: Icons.remove, onTap: onDecrement),
            ],
          ),
        ],
      ),
    );
  }
}