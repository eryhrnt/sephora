import 'package:flutter/material.dart';
import 'package:sephora/home/home.dart';
import 'package:sephora/notification/notification.dart';
import 'package:sephora/register/register1.dart';
import 'package:sephora/register/screen/activation_account.dart';
import 'package:sephora/register/screen/mpin_screen.dart';
import 'package:sephora/register/screen/term_condition_screen.dart';
import 'package:sephora/register/screen/otp_screen.dart';
import 'on_boarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sephora Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
