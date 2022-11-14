import 'package:flutter/material.dart';
import 'package:sephora/notification/widget/all_notification.dart';
import 'package:sephora/notification/widget/info_promo.dart';
import 'package:sephora/notification/widget/transaction_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key, required this.onChanged});

  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView(
          onPageChanged: (currentPage) {
            onChanged(currentPage);
          },
          children: [
            AllNotification(),
            InfoAndPromoNotif(),
          ],
        ),
      ),
    );
  }
}
