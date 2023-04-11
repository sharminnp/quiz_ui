import 'package:flutter/material.dart';

Text welcomeText() {
  return const Text(
    "Hello,\nLet's Start Quiz",
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
  );
}

ClipRRect quizImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      "assets/images/quiz_card.png",
      width: double.infinity,
      height: 162.28,
      fit: BoxFit.cover,
    ),
  );
}
