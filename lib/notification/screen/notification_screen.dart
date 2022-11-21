import 'package:flutter/material.dart';
import 'package:sephora/notification/widget/all_notification.dart';
import 'package:sephora/notification/widget/transaction_card.dart';
import 'package:sephora/notification/widget/notification_topic.dart';
import 'package:sephora/notification/widget/notification_page.dart';

import '../widget/notification_appbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key, required String title});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: NotificationAppBar(
                onPressed: () {},
                title: 'Notifikasi',
              ),
            ),
            TopicNotification(),
            SizedBox(height: 30),
            NotificationPage(
              onChanged: (currentPage) {
                setState(
                  () {
                    _currentPage = currentPage;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
