import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HeaderWidget2 extends StatelessWidget {
  final String title;

  const HeaderWidget2({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset( // тут был SvgPicture.asset
          'assets/Vector.png',
          width: 46,
          height: 46,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.white,
            fontFamily: 'Neue Machina',
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 24, right: 24),
          child: Text(
            textAlign: TextAlign.center,
            'Карта терминалов от Finik, исследуйте, отмечайте и зарабатывайте баллы',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
