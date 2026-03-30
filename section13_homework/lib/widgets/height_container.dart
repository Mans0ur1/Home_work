import 'package:flutter/material.dart';
import 'package:section13_homework/widgets/custom_slider.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final int height;
  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff17172F),
        ),
        child: Column(
          children: [
            const Text(
              'HEIGHT',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: height.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                  const TextSpan(
                    text: " cm",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            CustomSlider(
              height: height,
              onChanged: (value) {
                onChanged(value.toInt());
              },
            ),
          ],
        ),
      ),
    );
  }
}