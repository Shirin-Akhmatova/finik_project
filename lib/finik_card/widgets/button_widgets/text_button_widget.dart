import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;

  const TextButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.textColor,
    required this.textSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
