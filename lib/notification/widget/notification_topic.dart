import 'package:flutter/material.dart';
import 'package:sephora/notification/widget/topic_buttons.dart';

class TopicNotification extends StatefulWidget {
  const TopicNotification({super.key});

  @override
  State<TopicNotification> createState() => _TopicNotificationState();
}

class _TopicNotificationState extends State<TopicNotification> {
  late Menu _currentMenu;
  late PageController _pageController;
  late bool _fromTab;

  @override
  void initState() {
    _currentMenu = Menu.semua;
    _pageController = PageController();
    _fromTab = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 20),
          TopicButtons(
            active: true,
            text: 'Semua',
            onPressed: () => setState(
              () {
                _fromTab = true;
                _currentMenu = Menu.semua;
                _pageController.animateToPage(
                  _currentMenu.index,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.linear,
                );
              },
            ),
          ),
          const SizedBox(width: 10),
          TopicButtons(
            active: true,
            text: 'Info & Promo',
            onPressed: () => setState(
              () {
                _fromTab = true;
                _currentMenu = Menu.semua;
                _pageController.animateToPage(
                  _currentMenu.index,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.linear,
                );
              },
            ),
          ),
          const SizedBox(width: 10),
          TopicButtons(
            active: true,
            text: 'Transaksi',
            onPressed: () => setState(
              () {
                _fromTab = true;
                _currentMenu = Menu.semua;
                _pageController.animateToPage(
                  _currentMenu.index,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.linear,
                );
              },
            ),
          ),
          SizedBox(width: 10),
          TopicButtons(
            active: true,
            text: 'Split Bill',
            onPressed: () => setState(
              () {
                _fromTab = true;
                _currentMenu = Menu.semua;
                _pageController.animateToPage(
                  _currentMenu.index,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.linear,
                );
              },
            ),
          ),
          SizedBox(width: 10),
          TopicButtons(
            active: true,
            text: 'Keamanan',
            onPressed: () => setState(
              () {
                _fromTab = true;
                _currentMenu = Menu.semua;
                _pageController.animateToPage(
                  _currentMenu.index,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.linear,
                );
              },
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

enum Menu {
  semua,
  info,
  transaksi,
  splitBill,
  keamanan,
}
