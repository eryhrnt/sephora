import 'package:flutter/material.dart';

class JumbotronFront extends StatelessWidget {
  const JumbotronFront({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 12),
        elevation: 7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('assets/home/transfer.png'),
                    ),
                  ),
                  const Text(
                    'Transfer',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('assets/home/ewallet.png'),
                    ),
                  ),
                  const Text(
                    'E-Wallet',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('assets/home/buy.png'),
                    ),
                  ),
                  const Text(
                    'Pembelian',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      height: 20,
                      width: 20,
                      image: AssetImage('assets/home/other.png'),
                    ),
                  ),
                  const Text(
                    'Lainnya',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
