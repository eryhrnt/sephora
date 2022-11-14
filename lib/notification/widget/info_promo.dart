import 'package:flutter/material.dart';
import 'package:sephora/notification/widget/promo_card.dart';
import 'package:sephora/notification/widget/transaction_card.dart';

import 'notification_date.dart';

class InfoAndPromoNotif extends StatelessWidget {
  const InfoAndPromoNotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          DateNotification(
            date: '12 Januari 2022',
          ),
          PromoCard(
            label: 'Promo Cashback Belanja Pulsa Dengan OVO',
          ),
          SizedBox(height: 25),
          DateNotification(
            date: '11 Januari 2022',
          ),
        ],
      ),
    );
  }
}
