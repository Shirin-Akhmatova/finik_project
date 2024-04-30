import 'package:finik/finik_card/main_screen.dart';
import 'package:finik/finik_card/widgets/icon_widgets/finik_logo.dart';
import 'package:finik/finik_card/widgets/positioned_widget.dart';
import 'package:flutter/material.dart';

class AnimationLogo extends StatefulWidget {
  const AnimationLogo({super.key});

  @override
  State<AnimationLogo> createState() => _AnimationState();
}

class _AnimationState extends State<AnimationLogo> {
  double opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(Duration.zero, () {
      setState(() {
        opacityLevel = 1.0;
      });
      _navigateToNextScreen();
    });
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const PositionedWidget(),
          Center(
            child: AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: Transform.scale(
                scale: 1.1,
                child: const FinikLogo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
