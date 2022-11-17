import 'package:flutter/material.dart';

class TopicNotification extends StatelessWidget {
  const TopicNotification({
    super.key,
  });

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
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Info & Promo'),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Transaksi'),
          ),
          SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Split Bill'),
          ),
          SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Keamanan'),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
