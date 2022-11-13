import 'package:flutter/material.dart';

class OtpDigitContainer extends StatefulWidget {
  const OtpDigitContainer({
    Key? key,
    required this.otpValue,
    required this.otpLength,
  }) : super(key: key);

  final String otpValue;
  final int otpLength;

  @override
  State<OtpDigitContainer> createState() => _OtpDigitContainerState();
}

class _OtpDigitContainerState extends State<OtpDigitContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.otpLength, (index) => index + 1).map((e) {
        return OtpDigitItem(active: e <= widget.otpValue.length);
      }).toList(),
    );
  }
}

class OtpDigitItem extends StatelessWidget {
  const OtpDigitItem({
    Key? key,
    this.active = false,
  }) : super(key: key);

  final bool active;

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Container(
        width: 16,
        height: 16,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFFDAE9FF)),
          color: Color(0xFF2F82FF),
        ),
      );
    }
    return Container(
      width: 16,
      height: 16,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}
