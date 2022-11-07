import 'package:flutter/material.dart';
import 'package:sephora/register/register1.dart';
import 'package:sephora/register/screen/activation_account.dart';
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
      home: const ActivationScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
