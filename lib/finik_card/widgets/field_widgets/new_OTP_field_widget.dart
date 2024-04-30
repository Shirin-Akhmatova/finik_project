import 'package:flutter/material.dart';
import 'package:animated_pin_input_text_field/animated_pin_input_text_field.dart';
import 'package:finik/finik_card/constants/colors.dart';

class NewOTPFieldWidget extends StatelessWidget {
  const NewOTPFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      child: PinInputTextField(
        fillColor: finikGrey,
        borderColor: borderColor,
        pinLength: 6,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        onChanged: (pin) {},
      ),
    );
  }
}
