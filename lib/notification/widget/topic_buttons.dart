import 'package:flutter/material.dart';

class TopicButtons extends StatelessWidget {
  const TopicButtons({
    super.key,
    required this.active,
    required this.text,
    this.onPressed,
  });

  final bool active;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: active ? Theme.of(context).primaryColor : Colors.white,
      ),
      onPressed: () {
        onPressed;
      },
      child: Text(
        '$text',
        style: TextStyle(
          color: active ? Colors.white : Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
