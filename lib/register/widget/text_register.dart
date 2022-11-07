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
              filled: true,
              fillColor: Color(0xFFF3F7FD),
              hintText: 'NIK',
              border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF3F7FD),
              hintText: 'No. Telepon',
              border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF3F7FD),
              hintText: 'Nama Lengkap',
              border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        Stack(
          children: [
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF3F7FD),
                hintText: 'Tanggal Lahir',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.date_range),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF3F7FD),
              hintText: 'Email',
              border: OutlineInputBorder()),
        ),
      ]),
    );
  }
}
