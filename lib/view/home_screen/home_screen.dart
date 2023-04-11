import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/view/home_screen/widgets/bottom_section.dart';
import 'package:flutter_application_1/view/home_screen/widgets/upper_section.dart';
import 'package:flutter_application_1/view/home_screen/widgets/winners_list_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final bottomNavigationBarList = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.school_outlined), label: "My course"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border_rounded), label: "Favourite"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.note_alt_outlined), label: "My Note")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Quiz",
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: kBlack,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UpperSection(),
            WinnersListView(),
            const BottomSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 55,
          child: BottomNavigationBar(
            items: bottomNavigationBarList,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text(
          "id",
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
