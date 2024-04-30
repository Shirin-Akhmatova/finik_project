import 'package:finik/finik_card/constants/colors.dart';
import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatelessWidget {
  final String hintText;

  const PasswordFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: borderColor),
          ),
          filled: true,
          fillColor: bgColor,
        ),
        style: const TextStyle(color: Colors.white),
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        // onChanged: (value) {},
        // onSubmitted: (value) {},
      ),
    );
  }
}
