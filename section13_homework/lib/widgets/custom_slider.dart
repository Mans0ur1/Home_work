import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final int height;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 2,
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.white30,
        thumbColor: Color(0xFFFF2D55),
        overlayShape: SliderComponentShape.noOverlay,
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 15,
        ),
      ),
      child: Slider(
        max: 300,
        min: 0,
        value: height.toDouble(),
        label: height.toString(),
        onChanged: onChanged,
      ),
    );
  }
}