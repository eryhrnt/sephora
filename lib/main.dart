import 'package:flutter/material.dart';
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
      home: const OnBoardingInterface(title: 'Flutter Demo Home Page'),
    );
  }
}
