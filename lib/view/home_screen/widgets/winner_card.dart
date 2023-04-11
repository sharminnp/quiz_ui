import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/winner_model.dart';

class WinnerCard extends StatelessWidget {
  const WinnerCard({
    super.key,
    required this.index,
    required this.winnerList,
  });

  final int index;
  final List<WinnerModel> winnerList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Stack(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 32.5,
                    backgroundImage: AssetImage(winnerList[index].image),
                  ),
                ],
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Image.asset(
                  winnerList[index].rankimage,
                  width: 24,
                  height: 24,
                ),
              )
            ],
          ),
        ),
        Text(winnerList[index].name)
      ],
    );
  }
}
