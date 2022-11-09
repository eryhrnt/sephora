import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:sephora/register/widget/failed_dialog.dart';
import 'package:sephora/register/widget/register_appbar.dart';
import 'package:sephora/register/widget/success_dialog.dart';

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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RegisterAppBar(
                      onPressed: () {},
                      title: 'Syarat & Ketentuan',
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                                    image:
                                        AssetImage('assets/register/term.png'),
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
                                            'Persetujuan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xFF2B2F3C),
                                            ),
                                          ),
                                          SizedBox(height: 2),
                                          const Text(
                                            'Baca dan pahami  '
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
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: const Divider(
                                height: 1,
                                color: Color(0xFFE9F0FF),
                              ),
                            ),
                            SizedBox(height: 20),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    children: [
                                      ExpandablePanel(
                                        theme: const ExpandableThemeData(
                                          alignment: Alignment.center,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                        ),
                                        header: const Text(
                                          'Lorem ipsum dolor sit amet',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        collapsed: const Text(
                                          'Lorem ipsum dolor sit amet, consectetur '
                                          'adipiscing elit.',
                                          softWrap: true,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF727FA3),
                                          ),
                                        ),
                                        expanded: const Text(
                                          'Lorem ipsum dolor sit amet, consectetur '
                                          'adipiscing elit. In nibh massa arcu '
                                          'elementum sed feugiat. Purus fringilla '
                                          'iaculis turpis mattis in feugiat '
                                          'ullamcorper turpis in. Pellentesque '
                                          'purus, blandit erat proin laoreet quis. '
                                          'Amet enim, hendrerit pellentesque nunc '
                                          'posuere. Mauris ac purus eu congue. '
                                          'Tincidunt risus at elementum orci nisl '
                                          'vivamus sed. Duis facilisis massa morbi '
                                          'nisl. Facilisis volutpat nulla aliquet '
                                          'eu id bibendum feugiat vulputate diam. '
                                          'Sed ultricies phasellus lectus non '
                                          'massa facilisis massa.',
                                          softWrap: true,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF727FA3),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      ExpandablePanel(
                                        theme: const ExpandableThemeData(
                                          alignment: Alignment.center,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                        ),
                                        header: const Text(
                                          'Lorem ipsum dolor sit amet',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        collapsed: const Text(
                                          'Lorem ipsum dolor sit amet, consectetur '
                                          'adipiscing elit.',
                                          softWrap: true,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF727FA3),
                                          ),
                                        ),
                                        expanded: const Text(
                                          'Lorem ipsum dolor sit amet, consectetur '
                                          'adipiscing elit. In nibh massa arcu '
                                          'elementum sed feugiat. Purus fringilla '
                                          'iaculis turpis mattis in feugiat '
                                          'ullamcorper turpis in. Pellentesque '
                                          'purus, blandit erat proin laoreet quis. '
                                          'Amet enim, hendrerit pellentesque nunc '
                                          'posuere. Mauris ac purus eu congue. '
                                          'Tincidunt risus at elementum orci nisl '
                                          'vivamus sed. Duis facilisis massa morbi '
                                          'nisl. Facilisis volutpat nulla aliquet '
                                          'eu id bibendum feugiat vulputate diam. '
                                          'Sed ultricies phasellus lectus non '
                                          'massa facilisis massa.',
                                          softWrap: true,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF727FA3),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (v) {},
                                  ),
                                  const Expanded(
                                    child: Text('Saya telah membaca, memahami, '
                                        'dan menyetujui mengenai syarat '
                                        '& ketentuan'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(20, 0, 0, 0),
                          offset: Offset(0, -4),
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => const FailedDialog(
                                    text: 'Akun Anda gagal terdaftar di akun '
                                        'Sephora Banking. Silakan coba lagi.'),
                              );
                            },
                            child: Text('Tidak'),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.blue, width: 1.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => const SuccessDialog(
                                  text: 'Selamat! Akun Anda telah berhasil '
                                      'terdaftar di akun Sephora Banking. '
                                      'Silakan menikmati semua fitur Sephora '
                                      'Banking.',
                                ),
                              );
                            },
                            child: Text('Setuju'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
