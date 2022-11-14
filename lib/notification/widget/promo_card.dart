import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Promo',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '14:30',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF97A5C9),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Image(
                image: AssetImage('assets/notification/promo.png'),
              ),
              SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '$label',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
