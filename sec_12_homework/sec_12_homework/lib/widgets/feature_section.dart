import 'package:flutter/material.dart';
import 'package:sec_12_homework/models/feature_model.dart';
import 'package:sec_12_homework/widgets/feature_card.dart';

class FeatureSection extends StatelessWidget {
  final List<FeatureModel> features;
  const FeatureSection({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: features.length,
      itemBuilder: (context, index) {
        return FeaturesCard(
          iconData: features[index].icon,
          iconColor: features[index].iconColor,
          description: features[index].title,
          title: features[index].description,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 8);
      },
    );
  }
}
