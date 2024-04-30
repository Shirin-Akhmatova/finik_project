import 'package:finik/finik_card/constants/colors.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget {
  final String hintText;

  const EmailFieldWidget({super.key, required this.hintText});

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
          prefixIcon: Icon(
            Icons.email,
            color: Colors.blueGrey[300],
          ),
        ),
        style: const TextStyle(color: Colors.white),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        // onChanged: (value) {},
        // onSubmitted: (value) {},
      ),
    );
  }
}
