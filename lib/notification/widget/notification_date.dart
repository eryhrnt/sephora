import 'package:flutter/material.dart';

class DateNotification extends StatelessWidget {
  const DateNotification({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '$date',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF727FA3),
          ),
        ),
      ),
    );
  }
}
