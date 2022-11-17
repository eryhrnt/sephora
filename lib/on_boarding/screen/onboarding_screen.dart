import 'package:flutter/material.dart';
import 'package:sephora/app_theme.dart';
import 'package:sephora/on_boarding/widget/language_switcher.dart';
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
          padding: EdgeInsets.all(AppTheme.mainPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'BANK SEPHORA',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF2F82FF)),
                  ),
                  LanguageSwitcher(
                    isID: (isId) {
                      print(isId ? 'Bahasa' : 'English');
                    },
                  )
                ],
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
              SizedBox(height: 61),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Buat Akun Sekarang'),
              ),
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
                      image: AssetImage('assets/on_boarding/icon_help.png'),
                    ),
                    SizedBox(width: 6.5),
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
