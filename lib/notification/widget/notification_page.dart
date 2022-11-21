import 'package:flutter/material.dart';
import 'package:sephora/notification/widget/all_notification.dart';
import 'package:sephora/notification/widget/info_promo.dart';
import 'package:sephora/notification/widget/notification_topic.dart';
import 'package:sephora/notification/widget/topic_buttons.dart';
import 'package:sephora/notification/widget/transaction_card.dart';
import 'package:sephora/notification/widget/transaction_notif.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key, required this.onChanged});

  final Function(int) onChanged;

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

enum Menu {
  semua,
  info,
  transaksi,
  splitBill,
  keamanan,
}

class _NotificationPageState extends State<NotificationPage> {
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
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView(
          onPageChanged: (i) {
            setState() {
              if (!_fromTab) {
                _currentMenu = Menu.values[i];
                _pageController.animateToPage(
                  _currentMenu.index,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.linear,
                );
              }
            }
          },
          children: [
            AllNotification(),
            InfoAndPromoNotif(),
            TransactionNotif(),
          ],
        ),
      ),
    );
  }
}
