import 'package:flutter/material.dart';
import 'package:sephora/notification/widget/info_card.dart';
import 'package:sephora/notification/widget/promo_card.dart';
import 'package:sephora/notification/widget/transaction_card.dart';

import 'notification_date.dart';

class InfoAndPromoNotif extends StatelessWidget {
  const InfoAndPromoNotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          DateNotification(
            date: '12 Januari 2022',
          ),
          PromoCard(
            label: 'Promo Cashback Belanja Pulsa Dengan OVO',
          ),
          SizedBox(height: 15),
          InformationCard(
            headline: 'Informasi',
            infoImage: AssetImage('assets/notification/fix.png'),
            description:
                'Nasabah sephora mobile banking yth, pada jam 17:00 sephora '
                'mobile banking telah selesa...',
            info: 'Maintenance Selesai',
          ),
          SizedBox(height: 25),
          DateNotification(
            date: '11 Januari 2022',
          ),
          SizedBox(height: 15),
          InformationCard(
            headline: 'Informasi',
            infoImage: AssetImage('assets/notification/fix.png'),
            description:
                'Nasabah sephora mobile banking yth, pada jam 14:00 sephora '
                'mobile banking akan melaku...',
            info: 'Informasi Maintenance',
          ),
          SizedBox(height: 15),
          PromoCard(
            label: 'Promo Cashback Belanja Pulsa Dengan Gopay',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
