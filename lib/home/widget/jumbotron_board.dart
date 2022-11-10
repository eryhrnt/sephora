import 'package:flutter/material.dart';
import 'package:sephora/home/widget/jumbotron_back.dart';
import 'package:sephora/home/widget/jumbotron_front.dart';

class JumbotronBoard extends StatelessWidget {
  const JumbotronBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 335 / 240,
        child: Stack(
          children: [
            JumbotronBack(),
            Align(
              alignment: Alignment.bottomCenter,
              child: JumbotronFront(),
            ),
          ],
        ),
      ),
    );
  }
}
