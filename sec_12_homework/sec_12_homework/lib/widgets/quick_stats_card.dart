import 'package:flutter/material.dart';

class QuickStatsCard extends StatelessWidget {
  final IconData icon;
  final String number;
  final Color iconColor;
  final String rateName;
  const QuickStatsCard({
    super.key,
    required this.icon,
    required this.number,
    required this.iconColor, required this.rateName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      padding: .symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.3), blurRadius: .9),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: iconColor),
          SizedBox(height: 8),
          Text(number, style: TextStyle(fontWeight: .bold)),
          Text(rateName, style: TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }
}
