import 'package:flutter/material.dart';
import 'package:sephora/on_boarding/widget/oboarding_headline.dart';
import 'package:sephora/on_boarding/widget/onboarding_carousel.dart';
import 'package:sephora/on_boarding/widget/onboarding_indicator.dart';

class OnBoardingInterface extends StatefulWidget {
  const OnBoardingInterface({super.key, required String title});

  @override
  State<OnBoardingInterface> createState() => _OnBoardingInterfaceState();
}

class _OnBoardingInterfaceState extends State<OnBoardingInterface> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'BANK SEPHORA',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2F82FF)),
                    ),
                    Switch(value: true, onChanged: (v) {})
                  ],
                ),
              ),
              SizedBox(height: 58),
              OnBoardingCarousel(
                onChanged: (currentPage) {
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
              ),
              SizedBox(height: 30),
              OnBoardingIndicator(
                currentPage: _currentPage,
              ),
              SizedBox(height: 30),
              OnBoardingHeadline(
                controllerPage: _currentPage,
              ),
              // const Text('Kemudahan dalam Genggaman',
              //     style: TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w500,
              //         color: Color(0xFF464455))),
              // SizedBox(height: 10),
              // // ignore: prefer_const_constructors
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              //   child: const Text(
              //     'Hanya dengan 3 langkah registrasi, nikmati segala kemudahan dalam bertransaksi',
              //     style: TextStyle(
              //         fontSize: 14,
              //         fontWeight: FontWeight.w400,
              //         color: Color(0xFF727FA3)),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              SizedBox(height: 61),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Buat Akun Sekarang')),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Image(
                        width: 15,
                        height: 15,
                        image: AssetImage('assets/on_boarding/icon_help.png')),
                    const Text('Butuh Bantuan?')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
