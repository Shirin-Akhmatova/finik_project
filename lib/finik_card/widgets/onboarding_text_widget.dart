import 'package:flutter/material.dart';

class OnboardingTextWidget extends StatelessWidget {
  final String text;
  final Color textColor;

  const OnboardingTextWidget(
      {super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: Colors.white,
      ),
    );
  }
}
