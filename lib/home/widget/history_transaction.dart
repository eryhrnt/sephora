import 'package:flutter/material.dart';
import 'package:sephora/home/widget/history_item.dart';
import 'package:sephora/home/widget/home_section.dart';

class HistoryTransaction extends StatelessWidget {
  const HistoryTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HomeSection(
            title: 'Riwayat Terakhir',
          ),
          Card(
            child: Column(
              children: [
                HistoryItem(
                  imageProvider: AssetImage('assets/home/top_up.png'),
                  title: 'Top Up E-Wallet',
                  description: 'Gopay - 08123123123',
                  amount: 14000000,
                  type: TransactionType.keluar,
                ),
                HistoryItem(
                  imageProvider: AssetImage('assets/home/income.png'),
                  title: 'Transfer Masuk',
                  description: 'BRI - 3453 3434 3435',
                  amount: 14000000,
                  type: TransactionType.masuk,
                ),
                HistoryItem(
                  imageProvider: AssetImage('assets/home/cart.png'),
                  title: 'Pembelian',
                  description: 'Telkomsel - 08123123123',
                  amount: 14000000,
                  type: TransactionType.keluar,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
