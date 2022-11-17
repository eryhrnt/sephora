import 'package:flutter/material.dart';
import 'package:sephora/register/screen/term_condition_screen.dart';

import '../widget/next_button.dart';
import '../widget/register_appbar.dart';
import '../widget/text_register.dart';

class MpinScreen extends StatefulWidget {
  const MpinScreen({super.key, required String title});

  @override
  State<MpinScreen> createState() => _MpinScreenState();
}

class _MpinScreenState extends State<MpinScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(children: [
                    RegisterAppBar(
                      onPressed: () {},
                      title: 'Buat MPIN',
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/register/mpin.png'),
                                    width: 40,
                                    height: 40,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Informasi MPIN',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xFF2B2F3C),
                                            ),
                                          ),
                                          SizedBox(height: 2),
                                          const Text(
                                            'Masukkan informasi mengenai MPIN '
                                            'akun mobile banking Sephora Anda.',
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
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 20),
                              child: const Divider(
                                height: 2,
                                color: Color(0xFFE9F0FF),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PasswordText(pass: 'MPIN'),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Berisi Alphanumeric sejumlah 6 karakter.',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFFBCC8E7)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            PasswordText(pass: 'Konfirmasi MPIN'),
                            SizedBox(height: 301)
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              NextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermAndConditionScreen(
                        title: 'Syarat & Ketentuan',
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
