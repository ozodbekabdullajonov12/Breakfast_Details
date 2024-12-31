import 'package:breakfast_details_2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Breakfast_indredients extends StatelessWidget {
  const Breakfast_indredients(
      {super.key, required this.ingredients, required this.count_red_letters});

  final String ingredients;
  final int count_red_letters;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/dot.svg"),
        SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: ingredients.substring(0, count_red_letters),
                style: TextStyle(color: AppColors.redPinkMain, fontSize: 12),
              ),
              TextSpan(
                text: ingredients.substring(count_red_letters),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}