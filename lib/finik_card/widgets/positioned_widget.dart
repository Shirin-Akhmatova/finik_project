import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        'assets/Group9314.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
