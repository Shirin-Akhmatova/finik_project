import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;

  const TextWidget({super.key, required this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.white38,
      ),
    );
  }
}
