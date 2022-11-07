import 'package:flutter/material.dart';
import '../widget/next_button.dart';
import '../widget/register_appbar.dart';
import '../widget/text_register.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key, required String title});

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
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
                    RegisterAppBar(
                      onPressed: () {},
                      title: 'Aktivasi Akun',
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/register/activate.png'),
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
                                            'Informasi Akun',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xFF2B2F3C),
                                            ),
                                          ),
                                          SizedBox(height: 2),
                                          const Text(
                                            'Masukkan informasi mengenai akun '
                                            'mobile banking Sephora Anda.',
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
                            TextRegister(hint: 'No. Rekening'),
                            SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextRegister(hint: 'ID Pengguna'),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Berisi Alphanumeric sejumlah 10-30 karakter.',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFFBCC8E7)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PasswordText(pass: 'Kata Sandi'),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Berisi Alphanumeric sejumlah 8-10 karakter.',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFFBCC8E7)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            PasswordText(pass: 'Konfirmasi Sandi'),
                            SizedBox(height: 146)
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              NextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const (),
                  //   ),
                  // );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
