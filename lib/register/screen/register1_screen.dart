import 'package:flutter/material.dart';
import 'package:sephora/register/widget/back_button.dart';
import 'package:sephora/register/widget/next_button.dart';
import 'package:sephora/register/widget/text_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, required String title});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButtonWidget(
                          onPressed: () {},
                        ),
                        const Text(
                          'Buat Akun',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF2B2F3C)),
                        ),
                        SizedBox(width: 32)
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/register1/icon_id.png'),
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
                                            'Informasi Data Diri',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                color: Color(0xFF2B2F3C)),
                                          ),
                                          SizedBox(height: 2),
                                          const Text(
                                            'Masukkan informasi data diri Anda '
                                            'untuk proses pembuatan akun.',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xFF727FA3)),
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
                                  left: 20.0, right: 20.0),
                              child: const Divider(
                                height: 1,
                                color: Color(0xFFE9F0FF),
                              ),
                            ),
                            TextRegister(),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              NextButton(
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
