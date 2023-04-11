import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/view/home_screen/widgets/date_card.dart';

class QuizCard extends StatelessWidget {
  QuizCard({
    super.key,
    required this.color,
    required this.image,
    required this.text,
  });
  final Color color;
  final String image;
  final String text;

  final List day = ["11", "01", "23"];
  final List date = ["Day", "Month", "Year"];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        top: 18,
        right: 23,
      ),
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                quizDetails(),
                Row(
                  children: List.generate(3, (index) {
                    return DateCard(
                      day: day[index],
                      date: date[index],
                      color: color,
                    );
                  }),
                ),
                quizButton()
              ],
            ),
          ),
          Image.asset(
            image,
            width: 45.49,
            height: 128,
          )
        ],
      ),
    );
  }

  Column quizDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              color: kWhite, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        kHeight5,
        const Text(
          "This Quiz Starts on",
          style: TextStyle(
            color: kWhite,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Container quizButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: kBlack.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 12.5,
          horizontal: 17,
        ),
        child: Text(
          "PLAY QUIZ NOW",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 12, color: kWhite),
        ),
      ),
    );
  }
}
