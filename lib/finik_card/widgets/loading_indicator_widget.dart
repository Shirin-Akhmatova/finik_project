import 'dart:ui';

import 'package:finik/finik_card/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: LoadingIndicator(
            indicatorType: Indicator.circleStrokeSpin,
            colors: [finikGreen],
            strokeWidth: 3,
            backgroundColor: Colors.black,
            pathBackgroundColor: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Проверка...',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
