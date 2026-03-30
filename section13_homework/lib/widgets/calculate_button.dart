import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final VoidCallback onTap;

  const CalculateButton({
    super.key,
    required this.onTap, // ناخد callback من الأب
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // الضغط مرة واحدة
      child: Container(
        height: 60,
        width: double.infinity,
        color: const Color(0xffED0D54),
        child: const Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}