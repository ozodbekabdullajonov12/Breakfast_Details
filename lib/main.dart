import 'package:breakfast_details_2/pages/Breakfast_details_page/breakfast_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BreakfastDetails());
}

class BreakfastDetails extends StatelessWidget {
  const BreakfastDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BreakfastMainPage(),
    );
  }
}
