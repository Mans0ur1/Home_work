import 'package:flutter/material.dart';
import 'package:section13_homework/models/user.dart';
import 'package:section13_homework/widgets/gander_container.dart';

class GenderSection extends StatefulWidget {
  final Gender gender;
  const GenderSection({super.key, required this.gender});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  late Gender selectedGender;

  @override
  void initState() {
    super.initState();
    selectedGender = widget.gender;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: GanderContainer(
              isMale: true,
              isSelected: selectedGender == Gender.male,
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
            ),
          ),
          SizedBox(width: 32),
          Expanded(
            child: GanderContainer(
              isMale: false,
              isSelected: selectedGender == Gender.female,
              onTap: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}