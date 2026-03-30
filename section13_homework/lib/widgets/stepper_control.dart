import 'package:flutter/material.dart';

class StepperControl extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const StepperControl({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0xFF3E4452),
        child: Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}