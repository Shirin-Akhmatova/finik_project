import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class DuckWidget extends StatelessWidget {
  final Color containerColor;
  final String title;
  final String subtitle;

  const DuckWidget(
      {super.key,
      required this.containerColor,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: double.infinity,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/duck1.png'),
          // image: Svg(
          //   'assets/duck.svg',
          //   size: Size(77, 76),
          // ),
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white38,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
