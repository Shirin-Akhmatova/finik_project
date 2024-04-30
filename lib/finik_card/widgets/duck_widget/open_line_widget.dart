import 'package:flutter/material.dart';

class OpenLineWidget extends StatelessWidget {
  const OpenLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
