import 'package:breakfast_details_2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Profile_Page extends StatelessWidget {
  const Profile_Page({
    super.key,
    required this.image,
    required this.name,
    required this.nick,
  });

  final String image;
  final String nick, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Image.asset(
              image,
              width: 63,
              height: 63,
              fit: BoxFit.cover,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Column(
            children: [
              Text(
                nick,
                style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 6,
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 110,
                height: 21,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC6C9),
                    borderRadius: BorderRadius.circular(21)),
                child: Text(
                  "Following",
                  style: TextStyle(
                      color: Color(0xFFEC888D),
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset("assets/three_dots.svg"),
            ],
          )
        ],
      ),
    );
  }
}