
import 'package:flutter/material.dart';
import 'package:sec_12_homework/widgets/custom_button.dart';
class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: .infinity,
      padding: .all(16),
      decoration: BoxDecoration(
        color: Color(0xff8160B9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: .start,
        children: [
          Text(
            'Hello! 👋',
            style: TextStyle(
              color: Colors.white,
              fontWeight: .bold,
              fontSize: 20,
            ),
          ),
          Text(
            'Try your best to build this ui',
            style: TextStyle(color: Colors.white),
          ),
          CustomButton(buttonName: 'Get Started', color: Color(0xff673BB7),),
        ],
      ),
    );
  }
}
