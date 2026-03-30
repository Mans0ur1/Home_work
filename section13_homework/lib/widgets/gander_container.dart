import 'package:flutter/material.dart';

class GanderContainer extends StatelessWidget {
  final bool isMale;
  final bool isSelected;
  final VoidCallback onTap;

  const GanderContainer({
    super.key,
    required this.isMale,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? Color(0xff17172F) : Color(0xff090B24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(
                size: 120,
                isMale ? Icons.male_outlined : Icons.female_outlined,
                color: Colors.white,
              ),
              Text(
                isMale ? 'MALE' : 'FEMALE',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
