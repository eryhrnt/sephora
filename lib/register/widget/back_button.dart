import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 3), blurRadius: 10)
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/register1/back_arrow.png',
          width: 14,
          height: 10,
        ),
        color: Color(0xFF2F82FF),
      ),
    );
  }
}
