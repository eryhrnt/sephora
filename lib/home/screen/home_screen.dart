import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sephora/home/widget/activation_bar.dart';
import 'package:sephora/home/widget/favorite_list.dart';
import 'package:sephora/home/widget/history_transaction.dart';
import 'package:sephora/home/widget/home_appbar.dart';
import 'package:sephora/home/widget/jumbotron_board.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: HomeAppBar(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ActivationBar(),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: JumbotronBoard(),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FavoriteList(),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: HistoryTransaction(),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          shadow: BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 12,
            offset: Offset(0, -3),
          ),
          backgroundColor: Colors.white,
          activeColor: Colors.blue,
          inactiveColor: Color(0xFFBCC8E7),
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 20,
          rightCornerRadius: 20,
          activeIndex: 0,
          icons: iconList,
          onTap: ((index) {}),
        ),
      ),
    );
  }
}

var iconList = [
  Icons.home,
  Icons.article_outlined,
  Icons.star,
  Icons.person,
];
