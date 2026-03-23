import 'package:flutter/material.dart';

class FeaturesCard extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final String title;
  final String description;
  const FeaturesCard({super.key, required this.iconData, required this.iconColor,  required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        width: .infinity,
        padding: .all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withValues(alpha: .3), blurRadius: .9),
          ],
        ),
        child: Row(
          spacing: 12,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: iconColor.withValues(alpha: .2),
              ),
              padding: .all(6),
              child: Icon(iconData, color: iconColor),
            ),
            Column(
              spacing: 4,
              crossAxisAlignment: .start,
              children: [
                Text(title, style: TextStyle(fontWeight: .bold)),
                Text(
                  
                  description,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }
}
