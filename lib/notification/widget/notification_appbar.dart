import 'package:flutter/material.dart';
import 'package:sephora/app_theme.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({super.key, required this.onPressed, this.title});
  final Function onPressed;
  final title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(0, 3), blurRadius: 10)
              ],
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: IconButton(
            onPressed: () {
              onPressed();
            },
            icon: Image.asset(
              'assets/register/back_arrow.png',
              width: 14,
              height: 10,
            ),
            color: AppTheme.primary,
          ),
        ),
        Text(
          '$title',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color(0xFF2B2F3C),
          ),
        ),
        SizedBox(width: 32)
      ],
    );
  }
}
