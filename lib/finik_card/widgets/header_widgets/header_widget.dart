import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final IconData? iconData;
  final Function() onPressed;

  const HeaderWidget({
    super.key,
    required this.title,
    this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  size: 32,
                  color: Colors.grey,
                ),
                onPressed: onPressed,
              ),
            ),
            Center(
              child: Image.asset( // тут был SvgPicture.asset
                'assets/Vector.png',
                width: 46,
                height: 46,
              ),
            ),
          ],
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
