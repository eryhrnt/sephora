import 'package:flutter/material.dart';

class FailedDialog extends StatelessWidget {
  const FailedDialog({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Gagal!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 28),
            Container(
              width: 71,
              height: 71,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 61,
              ),
            ),
            SizedBox(height: 20),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tutup'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(100, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
