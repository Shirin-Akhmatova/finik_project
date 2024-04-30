import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String imagePath;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final BoxFit fit;

  const CustomImageWidget({
    super.key,
    required this.imagePath,
    this.top,
    this.bottom,
    this.fit = BoxFit.cover,
    this.left,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Image.asset(
        imagePath,
        fit: fit,
      ),
    );
  }
}
