import 'package:flutter/material.dart';

class TopicNotification extends StatelessWidget {
  const TopicNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 20),
          OutlinedButton(
            onPressed: () {},
            child: Text('Semua'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 3,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Info & Promo'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 3,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Transaksi'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 3,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Split Bill'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 3,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Keamanan'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 3,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
