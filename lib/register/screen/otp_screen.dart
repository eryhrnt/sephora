import 'package:flutter/material.dart';
import 'package:sephora/register/widget/register_appbar.dart';

import '../widget/otp_digit_container.dart';
import '../widget/otp_keyboard.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFF3F7FD),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              RegisterAppBar(
                onPressed: () {},
                title: 'OTP',
              ),
              SizedBox(height: 40),
              Image.asset(
                'assets/register/mobile.png',
                width: 70,
              ),
              SizedBox(height: 30),
              Text(
                '04 : 30',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Masukkan 6 digit kode'
                  ' OTP yang telah dikirimkan'
                  ' melalui nomor telepon'
                  ' +62 81231231232',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              OtpDigitContainer(),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: Text('Kirim Ulang'),
              ),
              SizedBox(height: 30),
              Expanded(child: OtpKeyboard()),
            ],
          ),
        ),
      ),
    );
  }
}
