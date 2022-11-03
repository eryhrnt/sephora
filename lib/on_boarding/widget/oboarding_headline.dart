import 'package:flutter/material.dart';

class OnBoardingHeadline extends StatelessWidget {
  const OnBoardingHeadline({super.key, required this.controllerPage});

  final int controllerPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeadlineWidget(page: controllerPage),
    );
  }
}

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key, required this.page});

  final int page;

  @override
  Widget build(BuildContext context) {
    if (page == 0) {
      return Column(
        children: [
          const Text('Kemudahan dalam Genggaman',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF464455))),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: const Text(
              'Hanya dengan 3 langkah registrasi, nikmati segala kemudahan dalam bertransaksi',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF727FA3)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
    } else if (page == 1) {
      return Column(
        children: [
          const Text('Transaksi Internasional',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF464455))),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: const Text(
              'Nikmati kemudahan bertransaksi di seluruh dunia dengan kartu VISA dan Mastercard',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF727FA3)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
    } else if (page == 2) {
      return Column(
        children: [
          const Text('Keamanan Dalam Bertransaksi',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF464455))),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: const Text(
              'Kemanan dalam bertransaksi Anda merupakan prioritas bagi kami',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF727FA3)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
    }

    return Column(
      children: [
        const Text('Kemudahan dalam Genggaman',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF464455))),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: const Text(
            'Hanya dengan 3 langkah registrasi, nikmati segala kemudahan dalam bertransaksi',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727FA3)),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
