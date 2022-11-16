import 'package:flutter/material.dart';
import 'package:sephora/notification/widget/transaction_card.dart';

import 'notification_date.dart';

class TransactionNotif extends StatelessWidget {
  const TransactionNotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          DateNotification(
            date: '12 Januari 2022',
          ),
          TransactionCard(
            tf: 'Transfer Keluar',
            imageProvider: AssetImage(
              'assets/notification/tf_out.png',
            ),
            tfImage: AssetImage(
              'assets/home/bri.png',
            ),
            info: 'Ahmad Alfiansyah - 4434 5384 3478',
            amount: 150000000,
          ),
          SizedBox(height: 25),
          DateNotification(
            date: '11 Januari 2022',
          ),
          TransactionCard(
            tf: "Transfer Masuk",
            imageProvider: AssetImage(
              'assets/notification/tf_in.png',
            ),
            tfImage: AssetImage(
              'assets/home/bri.png',
            ),
            info: 'Ahmad Alfiansyah - 4434 5384 3478',
            amount: 150000000,
          ),
          SizedBox(height: 15),
          TransactionCard(
            tf: "Transfer Masuk",
            imageProvider: AssetImage(
              'assets/notification/tf_in.png',
            ),
            tfImage: AssetImage(
              'assets/home/jenius.png',
            ),
            info: 'Ahmad Alfiansyah - 4434 5384 3478',
            amount: 150000000,
          ),
          SizedBox(height: 15),
          TransactionCard(
            tf: "Pembelian",
            imageProvider: AssetImage(
              'assets/notification/tf_out.png',
            ),
            tfImage: AssetImage(
              'assets/notification/telkomsel.png',
            ),
            info: 'Pulsa Telkomsel - 0827373737',
            amount: 150000,
          ),
          SizedBox(height: 15),
          TransactionCard(
            tf: "Pembayaran",
            imageProvider: AssetImage(
              'assets/notification/tf_out.png',
            ),
            tfImage: AssetImage(
              'assets/home/mandiri.png',
            ),
            info: 'Kartu Kredit - 4434 5384 3478',
            amount: 150000000,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
