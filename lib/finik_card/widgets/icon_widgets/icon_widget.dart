import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        size: 32,
        Icons.close,
        color: Colors.grey,
      ),
    );
  }
}
