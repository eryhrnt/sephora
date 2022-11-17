import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sephora/app_theme.dart';
import 'package:sephora/home/widget/home_section.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HomeSection(
            title: 'Daftar Favorit',
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderList(),
                BankAccountList(
                  imageProvider: AssetImage('assets/home/mandiri.png'),
                  label: 'Ery Harinanto',
                ),
                BankAccountList(
                  imageProvider: AssetImage('assets/home/bri.png'),
                  label: 'Kevin Raihan Saleh',
                ),
                BankAccountList(
                  imageProvider: AssetImage('assets/home/jenius.png'),
                  label: 'Abiel Aditya Pratama',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BorderList extends StatelessWidget {
  const BorderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
          borderType: BorderType.Circle,
          dashPattern: [9],
          strokeWidth: 2,
          color: AppTheme.primary,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            width: 60,
            height: 60,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 28,
                color: AppTheme.primary,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        const Text(
          'Tambah',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}

class BankAccountList extends StatelessWidget {
  const BankAccountList(
      {super.key, required this.imageProvider, required this.label});

  final ImageProvider imageProvider;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: (() {}),
            icon: Image(
              image: imageProvider,
            ),
          ),
        ),
        SizedBox(height: 8),
        Builder(
          builder: (context) {
            final labelLength = label.length;
            final idealChar = 12;
            final filler = '...';
            final fillerLength = filler.length;

            if (labelLength > 11) {
              var newText = '';
              var cutLabel = label.substring(0, idealChar - fillerLength);
              return Text(
                '$cutLabel$filler',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              );
            }

            return Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            );
          },
        ),
      ],
    );
  }
}
