import 'package:breakfast_details_2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainImageBreakfast extends StatelessWidget {
  const MainImageBreakfast({
    super.key,
    required this.name,
    required this.comment,
    required this.image,
    required this.mark,
  });

  final String name, comment, mark;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 327,
            height: 337,
            decoration: BoxDecoration(
              color: AppColors.redPinkMain,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            top: -10,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                width: 357,
                height: 281,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/star.svg",
                          color: Colors.white,
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          mark,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/reviews.svg",
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          comment,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 74,
            height: 71,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: AppColors.redPinkMain,
            ),
            child: SvgPicture.asset(
              "assets/play.svg",
              width: 74,
              height: 71,
            ),
          ),
        ],
      ),
    );
  }
}