import 'package:flutter/material.dart';
import 'package:sec_12_homework/widgets/quick_stats_card.dart';

class QuickStatsSection extends StatelessWidget {
  const QuickStatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceAround,
      
      children: [
        QuickStatsCard(
          icon: Icons.group,
          number: '1,234',
          iconColor: Color(0xff6139B4),
          rateName: 'Users',
        ),
        QuickStatsCard(
          icon: Icons.star,
          number: '4.8',
          iconColor: Color(0xffF59609),
          rateName: 'Rating',
        ),
        QuickStatsCard(
          icon: Icons.trending_up,
          number: '98%',
          iconColor: Color(0xff518EC5),
          rateName: 'Success',
        ),
      
      ],
    );
  }
}
