import 'dart:ui';
import 'package:flutter/material.dart';

class IconGlassWidget extends StatelessWidget {
  final IconData iconData;
  final double left;
  final Function() onPressed;

  const IconGlassWidget({
    super.key,
    required this.iconData,
    required this.left,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(
              width: 32,
              height: 32,
              padding: EdgeInsets.only(left: left),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade800.withOpacity(0.5),
              ),
              child: Center(
                child: Icon(
                  iconData,
                  size: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
