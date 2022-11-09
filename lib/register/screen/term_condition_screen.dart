import 'package:flutter/material.dart';
import 'package:sephora/register/widget/register_appbar.dart';

class TermAndConditionScreen extends StatelessWidget {
  const TermAndConditionScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  RegisterAppBar(
                    onPressed: () {},
                    title: '',
                  ),
                  Expanded(child: Card())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
