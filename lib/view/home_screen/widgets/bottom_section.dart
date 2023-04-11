// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/view/home_screen/widgets/quiz_card.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 23,
        left: 30,
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Super Quiz",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          kHeight23,
          QuizCard(
            color: kYellow,
            image: "assets/images/container1.png",
            text: "Personality Quiz",
          ),
          kHeight10,
          QuizCard(
            color: Colors.pink,
            image: "assets/images/container1.png",
            text: "General Knowledge",
          ),
        ],
      ),
    );
  }
}
