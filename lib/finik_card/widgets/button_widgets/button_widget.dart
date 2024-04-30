import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  final Color buttonColor;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;

  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
    required this.textSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontWeight: fontWeight,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
