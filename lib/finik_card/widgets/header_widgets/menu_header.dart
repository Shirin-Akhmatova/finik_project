import 'package:finik/finik_card/widgets/icon_widgets/icon_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class MenuHeader extends StatefulWidget {
  const MenuHeader({super.key});

  @override
  State<MenuHeader> createState() => _MenuHeaderState();
}

class _MenuHeaderState extends State<MenuHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const IconWidget(),
        const SizedBox(
          width: 75,
        ),
        Row(
          children: [
            Image.asset( // тут был SvgPicture.asset
              'assets/Vector.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Карта',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'Neue Machina',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
