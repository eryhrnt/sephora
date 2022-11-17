import 'package:flutter/material.dart';
import 'package:sephora/app_theme.dart';

class TextRegister extends StatelessWidget {
  const TextRegister({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 48,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: hint,
          ),
        ),
      ),
    );
  }
}

class DateRegister extends StatelessWidget {
  const DateRegister({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 48,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: hint,
                suffixIcon: IconButton(
                  icon: Icon(Icons.date_range),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PasswordText extends StatelessWidget {
  const PasswordText({super.key, required this.pass});

  final String pass;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 48,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: pass,
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
