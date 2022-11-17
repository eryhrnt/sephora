import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sephora/app_theme.dart';
import 'package:sephora/notification/widget/notification_date.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(
      {super.key,
      required this.tf,
      required this.imageProvider,
      required this.tfImage,
      required this.info,
      required this.amount});

  // final String date;
  final String tf;
  final ImageProvider imageProvider;
  final ImageProvider tfImage;
  final String info;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '$tf',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 2),
                          Image(
                            height: 7.67,
                            width: 7.67,
                            image: imageProvider,
                          ),
                        ],
                      ),
                      Text(
                        '14:30',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF97A5C9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppTheme.background,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        child: Image(
                          image: tfImage,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$info',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF97A5C9),
                            ),
                          ),
                          SizedBox(height: 4),
                          Builder(
                            builder: (context) {
                              late Color textColor;
                              final _numberFormat =
                                  NumberFormat('#,###', 'id_ID');

                              return Text(
                                'Rp${_numberFormat.format(amount)}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
