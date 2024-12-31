import 'package:breakfast_details_2/pages/Breakfast_details_page/classess/breakfast_details.dart';
import 'package:breakfast_details_2/pages/Breakfast_details_page/classess/breakfast_ingrediens.dart';
import 'package:breakfast_details_2/pages/Breakfast_details_page/classess/main_image_breakfast.dart';
import 'package:breakfast_details_2/pages/Breakfast_details_page/classess/profile_breakfast.dart';
import 'package:breakfast_details_2/pages/Breakfast_details_page/classess/six_easy_steps.dart';
import 'package:breakfast_details_2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreakfastMainPage extends StatelessWidget {
  const BreakfastMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C0F0D),
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF1C0F0D),
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SvgPicture.asset(
            "assets/vector.svg",
            width: 16,
            height: 14,
            fit: BoxFit.contain,
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Breakfast",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 8.0),
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/share.svg",
                width: 16,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(width: 10),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: SvgPicture.asset(
              "assets/svg/heart.svg",
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 130),
        children: [
          MainImageBreakfast(
            name: "Pancake & Cream",
            comment: "2230",
            image: "assets/pancake.png",
            mark: "4",
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Profile_Page(
                image: "assets/profile_photo.png",
                name: "Josh Ryan Chef",
                nick: "@Josh-Ryan",
              ),
              Breakfast_details(
                details: "Fluffy pancakes served with "
                    "silky whipped"
                    " cream, a classic breakfast indulgence "
                    "perfect for a leisurely morning treat.",
                duration: "45min",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "Ingredients",
                    style: TextStyle(
                      color: AppColors.redPinkMain,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                    ingredients: "1 cup all-purpose flour",
                    count_red_letters: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                      ingredients: "2 tablespoons granulated sugar",
                      count_red_letters: 1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                      ingredients: "Pasaf baking powder", count_red_letters: 5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                      ingredients: "1/2 teaspoon baking soda",
                      count_red_letters: 3),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                      ingredients: "1/4 teaspoon salt", count_red_letters: 3),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                    ingredients: "1 cup buttermilk (or reguler milk",
                    count_red_letters: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                      ingredients: "1 large egg", count_red_letters: 1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                      ingredients: "2 tablespoons unsalted butter, melted",
                      count_red_letters: 1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Breakfast_indredients(
                      ingredients: "Additional butter or oil for cooking",
                      count_red_letters: 0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "6 easy steps",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.redPinkMain,
              ),
            ),
          ),
          Six_Easy_Steps(
              texts: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                  " Etiam pellentesque aliquet augue. ",
              colors: true),
          SizedBox(height: 15,),
          Six_Easy_Steps(
              texts: "Phasellus faucibus aliquam tincidunt."
                  " Ut et elementum quam. Proin mi felis, dignissim at elit id,"
                  " ullamcorper mattis est.",
              colors: false),
          SizedBox(height: 15,),
          Six_Easy_Steps(
              texts: "Nunc molestie orci in mauris pretium ullamcorper."
                  " Vivamus et gravida felis."
                  " Nam bibendum libero turpis, ut facilisis justo hendrerit in. ",
              colors: true),
          SizedBox(height: 15,),
          Six_Easy_Steps(texts: "Donec euismod magna est,"
              " quis blandit leo eleifend vitae."
              " Maecenas ac luctus tortor, vel condimentum enim.",
              colors: false),
          SizedBox(height: 15,),
          Six_Easy_Steps(texts: "Morbi non commodo erat. Aliquam id massa"
              " aliquet, porttitor dui at, commodo mi"
              ". Aliquam et semper nisl. Morbi sit amet aliquet tellus.",
              colors: true),
          SizedBox(height: 15,),
          Six_Easy_Steps(texts:
          "Nam varius, diam in finibus congue, turpis "
              "eros lacinia nulla, vitae rutrum dolor dui at elit."
              " Vestibulum id viverra felis, non gravida odio.",
              colors: false)
        ],
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.redPinkMain,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/svg/home.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "assets/svg/community.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "assets/svg/categories.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "assets/svg/profile.svg",
                width: 25,
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}