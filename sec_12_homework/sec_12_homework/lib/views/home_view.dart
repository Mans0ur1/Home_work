import 'package:flutter/material.dart';
import 'package:sec_12_homework/models/feature_model.dart';
import 'package:sec_12_homework/widgets/celcome_card.dart';
import 'package:sec_12_homework/widgets/custom_button.dart';
import 'package:sec_12_homework/widgets/feature_section.dart';
import 'package:sec_12_homework/widgets/quick_stats_section.dart';

class HomeView extends StatelessWidget {
  List<FeatureModel> features = [
    FeatureModel(
      title: 'Fast Performance',
      description: 'Lightning fast app performance',
      icon: Icons.speed,
      iconColor: Colors.purple,
    ),
    FeatureModel(
      title: 'Secure',
      description: 'Your data is safe with us',
      icon: Icons.security,
      iconColor: Colors.blue,
    ),
    FeatureModel(
      title: 'Beautiful UI',
      description: 'Modern and clean design',
      icon: Icons.palette_outlined,
      iconColor: Colors.orange,
    ),
  ];
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              SizedBox(height: 16),
              WelcomeCard(),
              Text(
                "Quick Stats",
                style: TextStyle(fontSize: 16, fontWeight: .bold),
              ),
              QuickStatsSection(),
              Text(
                "Features",
                style: TextStyle(fontSize: 16, fontWeight: .bold),
              ),
              FeatureSection(features: features, ),
              SizedBox(
                height: 150,
              ),
               Row(
                  spacing: 8,
                 children: [
                   Expanded(child: CustomButton(buttonName: 'Settings', color: Color(0xff2196F3),)),
                   Expanded(child: CustomButton(buttonName: 'Profile', color: Color(0xffFF9700),)),
                 ],
               ),
                  
            ],
          ),
        ),
      ),
    );
  }
  
}

