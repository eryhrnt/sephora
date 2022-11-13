import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sephora/register/widget/register_appbar.dart';

import '../widget/otp_digit_container.dart';
import '../widget/otp_keyboard.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    Key? key,
    required String title,
  }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpLength = 6;
  var _otpValue = '';
  Timer? _timer;

  late int _timeLeft;
  final _totalSecond = 270;

  @override
  void initState() {
    _timeLeft = _totalSecond;
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          _timeLeft--;
        });

        if (_timeLeft == 0) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('End'),
              content: Text('Waktu Habis'),
            ),
          );
          _timer!.cancel();
        }
      },
    );
  }

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
                formatTime(_timeLeft),
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
              OtpDigitContainer(
                otpLength: _otpLength,
                otpValue: _otpValue,
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: Text('Kirim Ulang'),
              ),
              SizedBox(height: 30),
              Expanded(
                child: OtpKeyboard(
                  onChanged: (String value) {
                    if (value == 'Delete') {
                      _deleteLastChar();
                    }
                    if (_otpValue.length < _otpLength) {
                      if (value != 'Delete') {
                        setState(
                          () {
                            _otpValue += value;
                          },
                        );
                      }
                    }

                    print(_otpValue);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _deleteLastChar() {
    if (_otpValue.isNotEmpty) {
      final split = _otpValue.split('');
      split.removeLast();
      final join = split.join('');

      setState(
        () {
          _otpValue = join;
        },
      );
    }
  }

  String formatTime(int seconds) {
    final duration = Duration(seconds: _timeLeft).toString();
    final firstSplit = duration.split('.').first;
    final removeFirstDigit = firstSplit.split(':')..removeAt(0);
    final cleanTimer = removeFirstDigit.join(':');
    return cleanTimer;
  }
}
