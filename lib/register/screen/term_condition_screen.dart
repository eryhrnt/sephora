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
                    title: 'Syarat & Ketentuan',
                  ),
                  Expanded(
                      child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/register/term.png'),
                              width: 40,
                              height: 40,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Informasi Data Diri',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xFF2B2F3C),
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    const Text(
                                      'Masukkan informasi data diri Anda '
                                      'untuk proses pembuatan akun.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF727FA3),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
