import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class DateCard extends StatelessWidget {
  const DateCard({
    super.key,
    required this.day,
    required this.date,
    required this.color,
  });

  final String day;
  final String date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10),
      elevation: 5,
      color: Colors.transparent,
      child: Container(
        color: color,
        width: 40,
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              day,
              style: TextStyle(
                  color: kWhite, fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text(
              date,
              style: TextStyle(
                  color: kWhite, fontWeight: FontWeight.w400, fontSize: 7),
            ),
          ],
        ),
      ),
    );
  }
}
