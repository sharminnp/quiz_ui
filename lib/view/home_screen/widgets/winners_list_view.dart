import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/model/winner_model.dart';
import 'package:flutter_application_1/view/home_screen/widgets/winner_card.dart';

class WinnersListView extends StatelessWidget {
  WinnersListView({
    super.key,
  });
  final List<WinnerModel> winnersList = [
    WinnerModel(
      name: "David James",
      image: "assets/images/person1.png",
      rankimage: "assets/images/medal1.png",
    ),
    WinnerModel(
      name: "Alena Derlin",
      image: "assets/images/person2.png",
      rankimage: "assets/images/medal2.png",
    ),
    WinnerModel(
      name: "Madelyn Dias",
      image: "assets/images/person3.png",
      rankimage: "assets/images/medal3.png",
    ),
    WinnerModel(
      name: "David James",
      image: "assets/images/person1.png",
      rankimage: "assets/images/medal1.png",
    ),
    WinnerModel(
      name: "Alena Derlin",
      image: "assets/images/person2.png",
      rankimage: "assets/images/medal2.png",
    ),
    WinnerModel(
      name: "Madelyn Dias",
      image: "assets/images/person3.png",
      rankimage: "assets/images/medal3.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: 105,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return WinnerCard(
              index: index,
              winnerList: winnersList,
            );
          },
          separatorBuilder: (context, index) {
            return kWidth30;
          },
          itemCount: winnersList.length,
        ),
      ),
    );
  }
}
