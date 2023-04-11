import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/view/home_screen/widgets/widgets.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          welcomeText(),
          kHeight30,
          quizImage(),
          kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Winners",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              const Icon(Icons.arrow_forward)
            ],
          ),
        ],
      ),
    );
  }
}
