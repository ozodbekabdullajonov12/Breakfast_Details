import 'package:breakfast_details_2/utils/constants.dart';
import 'package:flutter/material.dart';

class Six_Easy_Steps extends StatelessWidget {
  const Six_Easy_Steps({super.key, required this.texts, required this.colors});

  final String texts;
  final bool colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: 356,
        height: 81,
        decoration: BoxDecoration(
          color: colors ? AppColors.pinkSub : AppColors.pink_Container,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            texts,
            style: const TextStyle(color: Color(0xFF1C0F0D)),
          ),
        ),
      ),
    );
  }
}