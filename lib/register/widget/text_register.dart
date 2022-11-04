import 'package:flutter/material.dart';

class TextRegister extends StatelessWidget {
  const TextRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
              filled: true, fillColor: Color(0xFFF3F7FD), hintText: 'NIK'),
        )
      ]),
    );
  }
}
