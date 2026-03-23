import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color color;
  const CustomButton({super.key, required this.buttonName, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child:  Text(
        buttonName,
        style: TextStyle(fontSize: 17, fontWeight: .bold, color: Colors.white),
      ),

      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 40),
        backgroundColor:color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
